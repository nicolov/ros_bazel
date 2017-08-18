#!/usr/bin/python

"""
Generate bazel code from a rosinstall_generator output.
"""

import subprocess
import yaml

ROSDISTRO = 'indigo'
# Packages that will be part of the generated workspace
ROS_PACKAGES = [
    'perception',
    'robot',
]
OUTPUT_PATH = 'tools/ros_packages.bzl'
BAZEL_WKSPACE_NAME = '@com_github_nicolov_ros_bazel'

def render_new_http_archive(pkg):
    BAZEL_ARCHIVE_TPL = """
    native.new_http_archive(
        name = "{pkg_name}",
        build_file = "{bazel_wkspace_name}//:packages/{pkg_name}.BUILD",
        url = "{pkg_url}",
        strip_prefix = "{pkg_version}",
    )
"""

    return BAZEL_ARCHIVE_TPL.format(pkg_name=pkg['local-name'],
                                    pkg_url=pkg['uri'],
                                    pkg_version=pkg['version'],
                                    bazel_wkspace_name=BAZEL_WKSPACE_NAME)


def main():
    rosinstall_contents = subprocess.check_output([
        'rosinstall_generator',
        '--rosdistro', ROSDISTRO,
        '--deps',
        '--tar',
        '--flat',
    ] + ROS_PACKAGES)

    rosinstall_ws = yaml.load(rosinstall_contents)

    bazel_archives = [
        'def ros_packages():'
    ]

    for pkg_tar in rosinstall_ws:
        pkg = pkg_tar['tar']

        bazel_archives.append(
            render_new_http_archive(pkg))

    with open(OUTPUT_PATH, 'w') as f:
        print('Writing to {}'.format(OUTPUT_PATH))
        f.write(''.join(bazel_archives))


if __name__ == '__main__':
    main()
