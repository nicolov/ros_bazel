package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "add_py_extension",
     "catkin_python_library")

catkin_python_library(
    name = 'pylib',
    py_module_name = 'rospy',
    deps = [
        '@rosgraph//:pylib',
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
