package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "add_py_extension",
     "catkin_python_library")

catkin_python_library(
    name = 'pylib',
    py_module_name = 'rosmsg',
    deps = [
        '@rosbag//:pylib',
        '@roslib//:pylib',
    ],
)

add_py_extension(src = 'scripts/rosmsg')

py_binary(
    name = 'rosmsg',
    srcs = [
        'scripts/rosmsg.py',
    ],
    deps = [
        ':pylib',
    ],
)

add_py_extension(src = 'scripts/rossrv')

py_binary(
    name = 'rossrv',
    srcs = [
        'scripts/rossrv.py',
    ],
    deps = [
        ':pylib',
    ],
)
