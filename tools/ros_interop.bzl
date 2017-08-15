"""
Interop with ROS-based tooling.
"""

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
            pkg_name=ctx.attr.ros_package_name)
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

def _export_exe_impl(ctx):
    # Symlink an executable to a well-known folder that can be added to
    # the PATH.
    # https://groups.google.com/forum/#!topic/bazel-discuss/Gq4WoDTHZn4

    input_file = list(ctx.attr.exe.files)[-1]

    ctx.action(
        inputs=[input_file],
        outputs=[ctx.outputs.out],
        command='ln -sf `readlink -f %s` %s' % (
            input_file.path,
            ctx.outputs.out.path,),
    )

_export_exe = rule(
    implementation = _export_exe_impl,
    attrs = {
        'exe': attr.label(mandatory=True, allow_files=True),
        'out': attr.output(mandatory=True),
    },
)

def export_exe(exes):
    for exe in exes:
        exe_name = exe.split(':')[-1]

        _export_exe(
            name = 'export_' + exe_name,
            exe = exe,
            out = 'bin/%s' % exe_name,
        )
