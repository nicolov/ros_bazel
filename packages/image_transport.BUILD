package(default_visibility = ["//visibility:public"])

load(
    "@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
    "catkin_package",
)

catkin_package(
    ros_package_name = "image_transport",
)

cc_library(
    name = "cclib",
    srcs = [
        "src/camera_common.cpp",
        "src/camera_publisher.cpp",
        "src/camera_subscriber.cpp",
        "src/image_transport.cpp",
        "src/publisher.cpp",
        "src/single_subscriber_publisher.cpp",
        "src/subscriber.cpp",
    ],
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    strip_include_prefix = "include",
    deps = [
        "@message_filters_repo//:cclib",
        "@pluginlib_repo//:cclib",
        "@rosconsole_repo//:cclib",
        "@roscpp_repo//:cclib",
        "@roslib_repo//:cclib",
        "@sensor_msgs_repo//:msgs_cpp",
    ],
)

cc_binary(
    name = "libimage_transport_plugins.so",
    srcs = [
        "src/manifest.cpp",
        "src/raw_publisher.cpp",
    ],
    linkshared = 1,
    linkstatic = 0,
    deps = [
        ":cclib",
        "@message_filters_repo//:cclib",
        "@pluginlib_repo//:cclib",
        "@rosconsole_repo//:cclib",
        "@roscpp_repo//:cclib",
        "@roslib_repo//:cclib",
        "@sensor_msgs_repo//:msgs_cpp",
    ],
)

cc_binary(
    name = "republish",
    srcs = [
        "src/republish.cpp",
    ],
    deps = [
        ":cclib",
    ],
)

cc_binary(
    name = "list_transports",
    srcs = [
        "src/list_transports.cpp",
    ],
    data = [
        ":libimage_transport_plugins.so",
    ],
    deps = [
        ":cclib",
    ],
)
