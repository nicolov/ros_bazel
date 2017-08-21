package(default_visibility = ["//visibility:public"])

load(
    "@com_github_nicolov_ros_bazel//:tools/message_generation.bzl",
    "generate_messages",
)

load(
    "@com_github_nicolov_ros_bazel//:tools/dynamic_reconfigure.bzl",
    "generate_dynamic_reconfigure_options",
)

generate_messages(
    ros_package_name = "image_proc",
)

generate_dynamic_reconfigure_options(
    ros_package_name = "image_proc",
)

