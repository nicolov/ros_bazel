package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "add_py_extension")

py_library(
    name = 'pylib',
    srcs = glob(['src/**/*.py']),
    imports = ['src'],
    deps = [
        '@rosgraph_repo//:pylib',
    ],
)

add_py_extension(src = 'scripts/rosparam')

py_binary(
    name = 'rosparam',
    srcs = [
        'scripts/rosparam.py',
    ],
    deps = [
        ':pylib',
    ],
)
