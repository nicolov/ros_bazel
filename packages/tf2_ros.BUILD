package(default_visibility = ["//visibility:public"])

load(
    "@com_github_nicolov_ros_bazel//:tools/message_generation.bzl",
    "generate_messages",
)

generate_messages(
    ros_package_name = "std_msgs",
    deps = [
        "@geometry_msgs_repo//:msgs",
        "@sensor_msgs_repo//:msgs",
    ],
)

cc_library(
    name = "cclib",
    srcs = [
        "src/buffer.cpp",
        "src/buffer_client.cpp",
        "src/buffer_server.cpp",
        "src/static_transform_broadcaster.cpp",
        "src/transform_broadcaster.cpp",
        "src/transform_listener.cpp",
    ],
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    strip_include_prefix = "include",
    deps = [
        "@actionlib_repo//:cclib",
        "@roscpp_repo//:cclib",
        "@tf2_repo//:cclib",
    ],
)

cc_binary(
    name = "buffer_server",
    srcs = [
        "src/buffer_server_main.cpp",
    ],
    deps = [
        ":cclib",
    ],
)
