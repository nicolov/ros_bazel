"""
Interop with ROS-based tooling.
"""

load("@com_github_nicolov_ros_bazel//:tools/path_utils.bzl",
    "basename",
)
load("@com_github_nicolov_ros_bazel//:tools/ros_global_tools.bzl",
    "ROS_GLOBAL_TOOLS",
)

PACKAGE_XML_TEMPLATE = """
<package format="2">
  <name>{pkg_name}</name>
  <version>0.0.1</version>
  <description>
    shim
  </description>
  <maintainer email="you@example.com">Your Name</maintainer>
  <license>BSD</license>
  <buildtool_depend>catkin</buildtool_depend>
</package>
"""

def _write_package_xml_impl(ctx):
    # Generate __init__.py for top-level package
    ctx.file_action(
        output=ctx.outputs.out,
        content=PACKAGE_XML_TEMPLATE.format(
            pkg_name=ctx.attr.ros_package_name),
    )


_write_package_xml = rule(
    implementation = _write_package_xml_impl,
    attrs = {
        'ros_package_name': attr.string(mandatory=True),
        'out': attr.output(mandatory=True),
    },
)

def catkin_package(ros_package_name):
    """ Generate a package.xml in the bazel out folder, so that the
    package executables can be picked up by rosrun. """

    _write_package_xml(
        ros_package_name = ros_package_name,
        out = 'package.xml',
        name = 'package_xml',
    )

#
#

def _symlink_file_impl(ctx):
    input_file = list(ctx.attr.src.files)[0]

    ctx.action(
        inputs = [input_file],
        outputs = [ctx.outputs.dest],
        command = 'ln -sf `readlink -f %s` %s' % (
            input_file.path,
            ctx.outputs.dest.path,
        ),
    )

_symlink_file = rule(
    implementation = _symlink_file_impl,
    attrs = {
        'src': attr.label(mandatory=True, allow_files=True, single_file=True),
        'dest': attr.output(mandatory=True),
    })

#
#

def symlink_files(srcs):
    # Symlink files to the build space, for example .launch files

    for src in srcs:
        _symlink_file(
            name = 'symlink_' + basename(src),
            src = src,
            dest = 'share/' + src,
        )

#
#

def add_extension(src, ext):
    _symlink_file(
        name = 'add_extension_%s_%s' % (src, ext),
        src = src,
        dest = src + ext,
    )

def add_py_extension(src):
    add_extension(
        src = src,
        ext = '.py',
    )

#
#

SETUP_BASH_TPL = """\
#!/usr/bin/bash

"""

def _generate_setup_bash_impl(ctx):
    paths = depset()
    for str_label in ROS_GLOBAL_TOOLS:
        label = Label(str_label)

        paths += [label.workspace_root]

    path_lines = [
        'export PATH="bazel-bin/{}:$PATH"'.format(p)
        for p in paths
    ]

    # Write
    ctx.file_action(
        output = ctx.outputs.out,
        content = SETUP_BASH_TPL + '\n'.join(path_lines) + '\n',
        executable = True,
    )

_generate_setup_bash = rule(
    implementation = _generate_setup_bash_impl,
    attrs = {
        'out': attr.output(mandatory=True),
    },
)

def generate_setup_bash():
    # Expose tools in the root BUILD so that they're built with //...
    for ros_tool_label in ROS_GLOBAL_TOOLS:
        native.alias(
            name = ros_tool_label.split(':')[-1],
            actual = ros_tool_label)

    _generate_setup_bash(
        name = 'setup_bash',
        out = 'setup.bash',
    )
