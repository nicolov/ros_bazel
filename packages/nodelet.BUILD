package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/message_generation.bzl",
     "generate_messages")

generate_messages(
    ros_package_name='nodelet',
    deps = [
        '@std_msgs//:msgs',
    ],
)

cc_library(
    name='cclib',
    srcs=[
        'src/callback_queue.cpp',
        'src/callback_queue_manager.cpp',
        'src/loader.cpp',
        'src/nodelet_class.cpp',
    ],
    hdrs=glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix='include',
    deps=[
        ':msgs_cpp',
        '@bondcpp//:cclib',
        '@boost//:system',
        '@cpp_common//:cclib',
        '@pluginlib//:cclib',
        '@rosconsole//:cclib',
        '@roscpp//:cclib',
    ],
)

cc_binary(
    name = 'nodelet',
    srcs = [
        'src/nodelet.cpp',
    ],
    deps = [
        ':cclib',
    ],
)
