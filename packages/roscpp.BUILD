package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/message_generation.bzl", "generate_messages")
load("@com_github_nicolov_ros_bazel//:tools/cmake_configure_file.bzl", "cmake_configure_file")

generate_messages(
    ros_package_name = "roscpp",
)

cmake_configure_file(
    name = "common_h",
    src = "include/ros/common.h.in",
    out = "include/ros/common.h",
    defines = [
        "roscpp_VERSION_MAJOR=1",
        "roscpp_VERSION_MINOR=11",
        "roscpp_VERSION_PATCH=21",
    ],
)

cmake_configure_file(
    name = "config_h",
    src = "src/libros/config.h.in",
    # Bazel automatically adds -iquote to the root of external repos, so we
    # save the generated file to the root instead of `src/libros`.
    out = "config.h",
    defines = [
        "HAVE_IFADDRS_H",
        "HAVE_TRUNC",
    ],
)

cc_library(
    name = "cclib",
    srcs = [
        "config.h",
        "src/libros/callback_queue.cpp",
        "src/libros/common.cpp",
        "src/libros/connection.cpp",
        "src/libros/connection_manager.cpp",
        "src/libros/file_log.cpp",
        "src/libros/init.cpp",
        "src/libros/internal_timer_manager.cpp",
        "src/libros/intraprocess_publisher_link.cpp",
        "src/libros/intraprocess_subscriber_link.cpp",
        "src/libros/io.cpp",
        "src/libros/master.cpp",
        "src/libros/message_deserializer.cpp",
        "src/libros/names.cpp",
        "src/libros/network.cpp",
        "src/libros/node_handle.cpp",
        "src/libros/param.cpp",
        "src/libros/poll_manager.cpp",
        "src/libros/poll_set.cpp",
        "src/libros/publication.cpp",
        "src/libros/publisher.cpp",
        "src/libros/publisher_link.cpp",
        "src/libros/rosout_appender.cpp",
        "src/libros/service.cpp",
        "src/libros/service_client.cpp",
        "src/libros/service_client_link.cpp",
        "src/libros/service_manager.cpp",
        "src/libros/service_publication.cpp",
        "src/libros/service_server.cpp",
        "src/libros/service_server_link.cpp",
        "src/libros/single_subscriber_publisher.cpp",
        "src/libros/spinner.cpp",
        "src/libros/statistics.cpp",
        "src/libros/subscriber.cpp",
        "src/libros/subscriber_link.cpp",
        "src/libros/subscription.cpp",
        "src/libros/subscription_queue.cpp",
        "src/libros/this_node.cpp",
        "src/libros/timer.cpp",
        "src/libros/topic.cpp",
        "src/libros/topic_manager.cpp",
        "src/libros/transport/transport.cpp",
        "src/libros/transport/transport_tcp.cpp",
        "src/libros/transport/transport_udp.cpp",
        "src/libros/transport_publisher_link.cpp",
        "src/libros/transport_subscriber_link.cpp",
        "src/libros/wall_timer.cpp",
        "src/libros/xmlrpc_manager.cpp",
    ],
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]) + [
        "include/ros/common.h",
    ],
    strip_include_prefix = "include",
    deps = [
        ":msgs_cpp",
        "@boost//:filesystem",
        "@cpp_common_repo//:cclib",
        "@rosconsole_repo//:cclib",
        "@roscpp_serialization_repo//:cclib",
        "@roscpp_traits_repo//:cclib",
        "@rosgraph_msgs_repo//:msgs_cpp",
        "@rostime_repo//:cclib",
        "@std_msgs_repo//:msgs_cpp",
        "@xmlrpcpp_repo//:cclib",
    ],
)
