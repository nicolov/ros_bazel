package(default_visibility = ["//visibility:public"])

load(
    "@com_github_nicolov_ros_bazel//:tools/message_generation.bzl",
    "generate_messages",
)

generate_messages(
    ros_package_name = "nav_msgs",
    deps = [
        "@actionlib_msgs_repo//:msgs",
        "@geometry_msgs_repo//:msgs",
    ],
)
