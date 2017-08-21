"""
ROS dynamic reconfigure.
"""

load("@com_github_nicolov_ros_bazel//:tools/path_utils.bzl",
     "basename",
     "dirname",
     "join_paths",
)

load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "symlink_file",
)

def outs_for_cfg_file(src, ros_package_name):
    """ List of paths to generated C++ files. """
    msg_name, msg_ext = basename(src).split('.')

    return [
        # C++
        join_paths(ros_package_name, msg_name + 'Config.h'),
    ], [
        # Python
        join_paths(ros_package_name, 'cfg', '__init__.py'),
        join_paths(ros_package_name, 'cfg', msg_name + 'Config.py'),
    ]

def _gen_dyn_reconf_impl(ctx):
    outpath = ctx.outputs.outs[0].dirname

    # print('Path to templates', ctx.attr._templates)
    # fail(list(ctx.attr._templates.files)[0].dirname)

    # print()
    # fail(dir(Label('@dynamic_reconfigure_repo')))

    ctx.action(
        inputs = ctx.files.src + ctx.files._templates,
        outputs = ctx.outputs.outs,
        executable = ctx.executable.src,
        arguments = [
            # path to the dynamic_reconfigure package (used for finding
            # templates). This is equivalent to external/xyz_repo, but
            # bazel checks the labels, so this is safer.
            Label('@dynamic_reconfigure_repo').workspace_root,
            # Docs target directory (not yet implemented)
            '/tmp/gencfg_bindir',
            # C++ gen dir
            outpath,
            # Python gen dir
            outpath,
        ],
    )

_gen_dyn_reconf = rule(
    implementation = _gen_dyn_reconf_impl,
    output_to_genfiles = True,
    attrs = {
        # The .cfg file is its own generator
        'src': attr.label(
            mandatory = True,
            allow_files = True,
            executable = True,
            cfg = 'host',
        ),
        # filegroup with the templates
        '_templates': attr.label(
            default = Label('@dynamic_reconfigure_repo//:templates'),
        ),
        'outs': attr.output_list(),
    }
)

def generate_dynamic_reconfigure_options(ros_package_name,
                                         deps = None):
    if deps == None:
        deps = []

    cfg_srcs = native.glob(['cfg/*.cfg'])

    all_cpp_outs = []

    for cfg_src in cfg_srcs:
        cfg_name = basename(cfg_src).split('.')[0]
        cpp_outs, py_outs = outs_for_cfg_file(cfg_src, ros_package_name)
        # Collect all C++ outputs
        all_cpp_outs += cpp_outs

        # The .cfg file is its own generator, so we create a py_binary
        # for it. We also need to work around the fact that the py_binary
        # rule looks for a .py extension.
        cfg_bin = cfg_name + '.py'
        symlink_file(
            name = 'change_cfg_ext_{}'.format(cfg_name),
            src = cfg_src,
            dest = cfg_bin,
        )
        native.py_binary(
            name = 'cfg_{}'.format(cfg_name),
            srcs = [cfg_bin],
            main = cfg_bin,
            deps = [
                '@dynamic_reconfigure_repo//:pylib',
            ],
        )

        # Call out to the actual code generation.
        _gen_dyn_reconf(
            name = '_gendyn_{}'.format(cfg_name),
            src = 'cfg_{}'.format(cfg_name),
            outs = cpp_outs + py_outs,
        )

    native.cc_library(
        name = 'dynamic_reconfigure_cpp',
        srcs = all_cpp_outs,
        visibility = ["//visibility:public"],
        deps = [
            Label('@dynamic_reconfigure_repo//:cclib'),
            Label('@dynamic_reconfigure_repo//:msgs_cpp'),
        ],
        includes=['']
    )
