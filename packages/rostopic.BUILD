package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "add_py_extension",
     "catkin_python_library")

catkin_python_library(
    name = 'pylib',
    py_module_name = 'rostopic',
    deps = [
        '@genpy//:pylib',
        '@rosbag//:pylib',
        '@rospy//:pylib',
    ],
)

add_py_extension(src = 'scripts/rostopic')

py_binary(
    name = 'rostopic',
    srcs = [
        'scripts/rostopic.py',
    ],
    deps = [
        ':pylib',
    ],
)
