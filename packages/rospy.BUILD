package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "catkin_python_library",
)

catkin_python_library(
    name = 'pylib',
    py_module_name = 'rospy',
    deps = [
        '@roscpp//:msgs_py',
        '@rosgraph_msgs//:msgs_py',
        '@rosgraph//:pylib',
        '@roslib//:pylib',
        '@std_msgs//:msgs_py',
    ],
)
