"""
ROS message generation.

- C++ and Python generation are handled slightly differently. The C++ generator
  only takes one .msg file at a time, so we need to run multiple actions (since
  each action need to know what its output files are). For the Python generator,
  we can generate all the messages in a single pass, but we need to use different
  scripts for services and messages, and also create an __init__.py (which
  needs to run last).
- Regarding transitive dependencies, we use Bazel providers to propagate
  msg dependencies up the build tree. We treat messages and services slightly
  differently here, since services can depend on messages of the same package,
  but can't be depended on. The _msgs_sources rule wraps .msg files for a
  package, and keeps track of the closure of all .msg files needed for
  compilation. Service generation can then just depend on the :msgs target
  for the current package.

References:
- https://docs.bazel.build/versions/master/skylark/cookbook.html
- https://github.com/RobotLocomotion/drake/blob/eefddbee62439156b6faaf3b0cecdd0c57e704d7/tools/lcm.bzl
- https://docs.bazel.build/versions/master/skylark/cookbook.html#mandatory-providers
"""

load("@com_github_nicolov_ros_bazel//:tools/path_utils.bzl",
    "basename",
    "dirname",
    "join_paths"
)

load("@com_github_nicolov_ros_bazel//:tools/action_generation.bzl",
     "generate_actions")

#
# Plumbing for transitive dependencies

# Holds dependency information between ROS messages
RosMsgProvider = provider()

def _msgs_sources_impl(ctx):
    # Keep track of include directories of transitive dependencies, and
    # their .msg files (for sandboxing)
    if ctx.files.srcs:
        # Find all directories with *.msg files, and add them to the
        # include flags. For example, in the case of actions, we have
        # both the original *.msg and the generated ones from the
        # actions, and they live in different directories.
        all_msg_paths = []
        for s in ctx.files.srcs:
            if s.dirname not in all_msg_paths:
                all_msg_paths.append(s.dirname)

        # Now format them with the name of the current package
        msg_include_dirs = [
            '%s:%s' % (ctx.attr.ros_package_name, p)
            for p in all_msg_paths
        ]
    else:
        msg_include_dirs = []

    srcs_closure = ctx.files.srcs
    for dep in ctx.attr.deps:
        msg_include_dirs += dep[RosMsgProvider].msg_include_dirs
        srcs_closure += dep[RosMsgProvider].srcs_closure

    return [RosMsgProvider(
        msg_include_dirs = msg_include_dirs,
        srcs_closure = srcs_closure)]

_msgs_sources = rule(
    implementation = _msgs_sources_impl,
    output_to_genfiles = True,
    attrs = {
        # 'srcs': message/service sources for the current package
        'srcs': attr.label_list(allow_files=['.msg', '.srv'], mandatory=True),
        # 'deps': closure of message sources (srvs don't make sense here)
        'deps': attr.label_list(providers=[RosMsgProvider]),
        'ros_package_name': attr.string(mandatory=True),
    }
)

#
# C++

def _cpp_outs_for_file(src, ros_package_name):
    """ Return the paths for C++ sources that would be generated from
    a msg/srv input file. """

    msg_name, msg_ext = basename(src).split('.')

    (msg_ext in ['srv', 'msg']
        or fail('Unknown source file extension %s' % msg_ext))

    outs = [
        join_paths(ros_package_name, msg_name + '.h')
    ]

    # Declare request/response headers for services
    if msg_ext == 'srv':
        outs += [
            join_paths(ros_package_name, msg_name + 'Request.h'),
            join_paths(ros_package_name, msg_name + 'Response.h')
        ]

    return outs


def _gencpp_impl(ctx):
    """Implementation for the gencpp rule. Shells out to the scripts
    shipped with gencpp."""

    # Index of the requested message within the passed 'srcs'
    msg_idx = ctx.attr.msg_idx

    outpath = ctx.outputs.outs[0].dirname

    inputs = ctx.files.srcs + ctx.attr.msgs[RosMsgProvider].srcs_closure

    msg_include_flags = []
    for msg_include_dir in ctx.attr.msgs[RosMsgProvider].msg_include_dirs:
        msg_include_flags += ['-I', msg_include_dir]

    ctx.action(
        # All files need to be passed in as inputs because sandboxing
        inputs=inputs,
        outputs=ctx.outputs.outs,
        executable=ctx.executable._gen_script,
        arguments=[
            '-o', outpath,
            '-p', ctx.attr.ros_package_name,
        ] + msg_include_flags + [
            # Actual .msg/srv file to generate the code for
            ctx.files.srcs[msg_idx].path,
        ],
    )


_gencpp = rule(
    implementation=_gencpp_impl,
    output_to_genfiles=True,
    attrs={
        'srcs': attr.label_list(allow_files=True),
        'msgs': attr.label(providers=[RosMsgProvider], mandatory=True),
        'msg_idx': attr.int(),
        'ros_package_name': attr.string(mandatory=True),
        '_gen_script': attr.label(
            default=Label('@gencpp_repo//:gencpp_exe'),
            executable=True,
            cfg='host'),
        'outs': attr.output_list(),
    },
)

#
# Python

def _py_outs_for_files(srcs, ros_package_name, gen_type):
    """ Return the paths for Python sources that would be generated from
    a *list* of .msg/srv files.

    NOTE: compared to the C++ generator, this takes in a *list* of files,
    since the code generator scripts takes in a list too.
    """

    (gen_type in ['msg', 'srv']
        or fail('Unknown gen type %s (should be either "msg" or "srv")' % gen_type))

    # Generated file names for each source file
    gen_filenames = []

    for item in srcs:
        msg_name, msg_ext = basename(item).split('.')

        (msg_ext == gen_type
            or fail("File %s doesn't match gen type %s" % (item, gen_type)))

        # NOTE: Generated py files have a leading underscore
        gen_filenames.append('_%s.py' % msg_name)

    outs = [
        # One .py file for each source file
        join_paths(ros_package_name, gen_type, gen_filename)
        for gen_filename in gen_filenames
    ] + [
        # __init__ for the msg/srv package
        join_paths(ros_package_name, gen_type, '__init__.py')
    ]

    return outs


def _genpy_msgs_impl(ctx):
    """Implementation for the genpy rule. Shells out to the scripts
    shipped with genpy."""

    outpath = ctx.outputs.outs[0].dirname

    inputs = ctx.files.srcs + ctx.attr.msgs[RosMsgProvider].srcs_closure

    msg_include_flags = []
    for msg_include_dir in ctx.attr.msgs[RosMsgProvider].msg_include_dirs:
        msg_include_flags += ['-I', msg_include_dir]

    # Generate .py files for messages/services
    ctx.action(
        inputs=inputs,
        # NOTE: [:-1] because the action doesn't generate the __init__.py file
        outputs=ctx.outputs.outs[:-1],
        executable=ctx.executable.gen_script,
        arguments=[
            '-o', outpath,
            '-p', ctx.attr.ros_package_name,
        ] + msg_include_flags + [
            f.path for f in ctx.files.srcs
        ],
    )

    # Generate __init__.py for msg/srv module
    # NOTE: it looks at the .py files in its output path, so it also
    # needs to depend on the output of the per-msg step.
    ctx.action(
        inputs=ctx.files.srcs + ctx.outputs.outs[:-1],
        outputs=[ctx.outputs.outs[-1]],
        executable=ctx.executable.gen_module_script,
        arguments=[
            '--initpy',
            '-o', outpath,
            '-p', ctx.attr.ros_package_name,
        ],
    )

    return struct()


_genpy_msgs = rule(
    implementation=_genpy_msgs_impl,
    output_to_genfiles=True,
    attrs={
        'srcs': attr.label_list(allow_files=True),
        'ros_package_name': attr.string(mandatory=True),
        'msgs': attr.label(providers=[RosMsgProvider], mandatory=True),
        # Script to generate the messages code (either srv or msg)
        'gen_script': attr.label(
            executable=True,
            cfg='host'),
        # Script to generate the __init__.py (same for both msg and srv)
        'gen_module_script': attr.label(
            default=Label('@genpy_repo//:genmsg_py_exe'),
            executable=True,
            cfg='host',
        ),
        'outs': attr.output_list(),
    },
)


def _genpy_toplevel_impl(ctx):
    # Generate __init__.py for top-level package
    ctx.file_action(
        output=ctx.outputs.out,
        content='',
    )


_genpy_toplevel = rule(
    implementation = _genpy_toplevel_impl,
    output_to_genfiles = True,
    attrs = {
        'ros_package_name': attr.string(mandatory=True),
        'out': attr.output(),
    })


def generate_messages(ros_package_name=None,
                      deps=None):
    """ Wraps all message generation functionality. Uses the _genpy
    and _gencpp to shell out to the code generation scripts, then wraps
    the resulting files into Python and C++ libraries.
    This is an example of a Bazel _macro_. It doesn't add any new
    functionality, but hides the internal implementation. In this case, we take
    care of the output file name generation.
    """

    if not ros_package_name:
        fail('ros_package_name is required.')

    if deps == None:
        deps = []

    # Separate msg and srv sources
    msg_srcs = native.glob(['msg/*.msg'])
    srv_srcs = native.glob(['srv/*.srv'])

    # Generate *.msg from *.action, and add them to the original list.
    action_srcs = native.glob(['action/*.action'])
    msg_srcs += generate_actions(action_srcs, ros_package_name)

    # Collect all .msg sources to track their transitive dependencies,
    # and track their dependencies. Note that we don't need to that
    # for *.srv files, since they can't be imported.
    _msgs_sources(
        name = 'msgs',
        ros_package_name = ros_package_name,
        srcs = msg_srcs,
        deps = deps,
    )

    #
    # C++

    # Union of C++ files generated for all messages.
    cpp_outs = []

    # Generate code for each message, and collect the outputs (we'll
    # use the list to generate the cc_library later).
    # The C++ generator is the same for both .msg & .srv, so we can
    # just collect them together.
    all_srcs = msg_srcs + srv_srcs

    for i, src in enumerate(all_srcs):
        this_msg_outs = _cpp_outs_for_file(src, ros_package_name)

        _gencpp(
            name = '_gencpp_%s' % basename(src).split('.')[0],
            srcs = all_srcs,
            msg_idx = i,
            msgs = ':msgs',
            ros_package_name = ros_package_name,
            outs = this_msg_outs,
        )

        cpp_outs += this_msg_outs

    native.cc_library(
        name='msgs_cpp',
        srcs=cpp_outs,
        visibility=["//visibility:public"],
        deps=[
            '@roscpp_serialization_repo//:cclib',
        ] + [
            # See note for python below
            x + '_cpp' for x in deps
        ],
        includes=['']
    )

    #
    # Python

    # Generate messages if there are any
    if msg_srcs:
        py_msg_outs = _py_outs_for_files(msg_srcs, ros_package_name, 'msg')

        _genpy_msgs(
            name = '_genpy_msgs',
            srcs = msg_srcs,
            msgs = ':msgs',
            ros_package_name = ros_package_name,
            outs = py_msg_outs,
            gen_script = Label('@genpy_repo//:genmsg_py_exe'),
        )
    else:
        py_msg_outs = []

    # Generate services if there are any
    if srv_srcs:
        py_srv_outs = _py_outs_for_files(srv_srcs, ros_package_name, 'srv')

        _genpy_msgs(
            name = '_genpy_srvs',
            srcs = srv_srcs,
            msgs = ':msgs',
            ros_package_name = ros_package_name,
            outs = py_srv_outs,
            gen_script = Label('@genpy_repo//:gensrv_py_exe'),
        )
    else:
        py_srv_outs = []

    # Generate top-level __init__
    py_toplevel_init = join_paths(ros_package_name, '__init__.py')
    _genpy_toplevel(
        name = '_genpy_init',
        ros_package_name = ros_package_name,
        out = py_toplevel_init,
    )

    native.py_library(
        name='msgs_py',
        srcs=py_msg_outs + py_srv_outs + [py_toplevel_init],
        imports=['.'],
        deps=[
            '@genpy_repo//:pylib',
        ] + [
            # For python, we also need to depend on generated .pys for
            # dependencies, so that they can be found at runtime.
            # Following the convention that 'msgs' are the source files,
            # and 'msgs_py' the generated python libraries, we can just
            # mangle the label string.
            x + '_py' for x in deps
        ],
        visibility=["//visibility:public"],
    )
