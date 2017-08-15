package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "add_extension")

py_library(
    name = 'pylib',
    srcs = glob(['src/**/*.py']),
    imports = ['src'],
    deps = [
        '@genpy_repo//:pylib',
        '@rosbag_repo//:pylib',
        '@rospy_repo//:pylib',
    ],
)

add_extension(
    name = 'cdsfsad',
    src = 'scripts/rostopic',
    dest = 'scripts/rostopic.py',
)

py_binary(
    name = 'rostopic',
    srcs = [
        'scripts/rostopic.py',
    ],
    deps = [
        ':pylib',
    ],
)
