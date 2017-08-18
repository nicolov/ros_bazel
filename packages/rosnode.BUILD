package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "add_py_extension",
     "catkin_python_library")

catkin_python_library(
    name = 'pylib',
    py_module_name = 'rosnode',
    deps = [
        '@rosgraph//:pylib',
        '@rostopic//:pylib',
    ],
)

add_py_extension(src = 'scripts/rosnode')

py_binary(
    name = 'rosnode',
    srcs = [
        'scripts/rosnode.py',
    ],
    deps = [
        ':pylib',
    ],
)
