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
    ros_package_name = "image_publisher",
)

generate_dynamic_reconfigure_options(
    ros_package_name = "image_publisher",
)

cc_binary(
    name = "libimage_publisher.so",
    srcs = [
        "src/nodelet/image_publisher_nodelet.cpp",
    ],
    linkshared = 1,
    linkstatic = 0,
    deps = [
        ":dynamic_reconfigure_cpp",
        "@camera_info_manager_repo//:cclib",
        "@cv_bridge_repo//:cclib",
        "@image_transport_repo//:cclib",
        "@nodelet_repo//:cclib",
        "@roscpp_repo//:cclib",
    ],
)

cc_binary(
    name = "image_publisher",
    srcs = [
        'src/node/image_publisher.cpp',
    ],
    deps = [
        ":dynamic_reconfigure_cpp",
        "@camera_info_manager_repo//:cclib",
        "@cv_bridge_repo//:cclib",
        "@image_transport_repo//:cclib",
        "@nodelet_repo//:cclib",
        "@roscpp_repo//:cclib",
    ],
)
