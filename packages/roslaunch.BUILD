package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "add_py_extension",
     "catkin_python_library")

catkin_python_library(
    name = 'pylib',
    py_module_name = 'roslaunch',
    deps = [
        '@rosgraph//:pylib',
        '@roslib//:pylib',
        '@rosmaster//:pylib',
        '@rosclean//:pylib',
        '@rosgraph_msgs//:msgs_py',
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
        '@netifaces',
    ],
)
