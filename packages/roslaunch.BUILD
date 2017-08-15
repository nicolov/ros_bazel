package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "add_py_extension")

py_library(
    name = 'pylib',
    srcs = glob(['src/**/*.py']),
    imports = ['src'],
    deps = [
        '@rosgraph_repo//:pylib',
        '@roslib_repo//:pylib',
        '@rosmaster_repo//:pylib',
        '@rosclean_repo//:pylib',
        '@rosgraph_msgs_repo//:msgs_py',
    ],
)

add_py_extension(
    src = 'scripts/roslaunch',
)

py_binary(
    name = 'roslaunch',
    srcs = [
        'scripts/roslaunch.py',
    ],
    deps = [
        ':pylib',
    ],
)
