package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "catkin_python_library",
)

catkin_python_library(
    name = 'pylib',
    py_module_name = 'rospy',
    deps = [
        '@roscpp_repo//:msgs_py',
        '@rosgraph_msgs_repo//:msgs_py',
        '@rosgraph_repo//:pylib',
        '@roslib_repo//:pylib',
        '@std_msgs_repo//:msgs_py',
    ],
)
