package(default_visibility = ["//visibility:public"])

load(
    "@com_github_nicolov_ros_bazel//:tools/message_generation.bzl",
    "generate_messages",
)

generate_messages(
    ros_package_name = "actionlib_msgs",
    deps = [
        "@std_msgs_repo//:msgs",
    ],
)

py_binary(
    name = "genaction",
    srcs = [
        "scripts/genaction.py",
    ],
    deps = [
    ],
)
