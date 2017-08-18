package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "add_py_extension",
     "catkin_python_library")

catkin_python_library(
    name = 'pylib',
    py_module_name = 'rosservice',
    deps = [
        '@genpy//:pylib',
        '@rosgraph//:pylib',
        '@roslib//:pylib',
        '@rosmsg//:pylib',
        '@rospy//:pylib',
    ],
)

add_py_extension(src = 'scripts/rosservice')

py_binary(
    name = 'rosservice',
    srcs = [
        'scripts/rosservice.py',
    ],
    deps = [
        ':pylib',
    ],
)
