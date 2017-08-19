package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/message_generation.bzl",
     "generate_messages")

generate_messages(
    ros_package_name='tf',
    deps = [
        '@geometry_msgs_repo//:msgs',
    ],
)

cc_library(
    name='cclib',
    srcs=[
        'src/cache.cpp',
        'src/tf.cpp',
        'src/transform_broadcaster.cpp',
        'src/transform_listener.cpp',
    ],
    hdrs=glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix='include',
    deps=[
        ':msgs_cpp',
        '@angles_repo//:cclib',
        '@roscpp_repo//:cclib',
        '@sensor_msgs_repo//:cclib',
        '@tf2_repo//:cclib',
        '@tf2_ros_repo//:cclib',
    ],
)

cc_binary(
    name = 'tf_empty_listener',
    srcs = [
        'src/empty_listener.cpp',
    ],
    deps = [
        ':cclib',
    ],
)

cc_binary(
    name = 'tf_echo',
    srcs = [
        'src/tf_echo.cpp',
    ],
    deps = [
        ':cclib',
    ],
)

cc_binary(
    name = 'tf_change_notifier',
    srcs = [
        'src/change_notifier.cpp',
    ],
    deps = [
        ':cclib',
    ],
)

cc_binary(
    name = 'tf_monitor',
    srcs = [
        'src/tf_monitor.cpp',
    ],
    deps = [
        ':cclib',
    ],
)

cc_binary(
    name = 'static_transform_publisher',
    srcs = [
        'src/static_transform_publisher.cpp',
    ],
    deps = [
        ':cclib',
    ],
)
