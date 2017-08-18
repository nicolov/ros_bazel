package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/message_generation.bzl",
     "generate_messages")

generate_messages(
    ros_package_name='tf2_msgs',
    deps = [
        '@actionlib_msgs//:msgs',
        '@geometry_msgs//:msgs',
    ],
)
