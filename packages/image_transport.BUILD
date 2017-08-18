package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "catkin_package")

catkin_package(
    ros_package_name = 'image_transport')

cc_library(
    name='cclib',
    srcs=[
        'src/camera_common.cpp',
        'src/camera_publisher.cpp',
        'src/camera_subscriber.cpp',
        'src/image_transport.cpp',
        'src/publisher.cpp',
        'src/single_subscriber_publisher.cpp',
        'src/subscriber.cpp',
    ],
    hdrs=glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix='include',
    deps=[
        '@message_filters//:cclib',
        '@pluginlib//:cclib',
        '@rosconsole//:cclib',
        '@roscpp//:cclib',
        '@roslib//:cclib',
        '@sensor_msgs//:msgs_cpp',
    ],
)

cc_binary(
    name = 'libimage_transport_plugins.so',
    linkshared = 1,
    linkstatic = 0,
    srcs = [
        'src/manifest.cpp',
        'src/raw_publisher.cpp',
    ],
    deps = [
        ':cclib',
        '@message_filters//:cclib',
        '@pluginlib//:cclib',
        '@rosconsole//:cclib',
        '@roscpp//:cclib',
        '@roslib//:cclib',
        '@sensor_msgs//:msgs_cpp',
    ],
)

cc_binary(
    name = 'republish',
    srcs = [
        'src/republish.cpp',
    ],
    deps = [
        ':cclib',
    ],
)

cc_binary(
    name = 'list_transports',
    srcs = [
        'src/list_transports.cpp',
    ],
    deps = [
        ':cclib',
    ],
    data = [
        ':libimage_transport_plugins.so',
    ],
)
