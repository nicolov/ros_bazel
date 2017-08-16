package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/message_generation.bzl",
     "generate_messages")

generate_messages(
    ros_package_name='sensor_msgs',
    deps = [
        '@geometry_msgs_repo//:msgs',
        '@std_msgs_repo//:msgs',
    ],
)

cc_library(
    name = 'cclib',
    srcs = [],
    hdrs = glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix = 'include',
    deps=[
        ':msgs_cpp',
    ],
)