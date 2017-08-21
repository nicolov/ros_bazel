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
    ros_package_name = "dynamic_reconfigure",
    deps = [
        "@std_msgs_repo//:msgs",
    ],
)

generate_dynamic_reconfigure_options(
    ros_package_name = "dynamic_reconfigure",
)

py_library(
    name = "pylib",
    srcs = glob(["src/**/*.py"]),
    imports = ["src"],
    deps = [
        "@roslib_repo//:pylib",
    ],
)

filegroup(
    name = "templates",
    srcs = glob(["templates/*.template"]),
)

cc_library(
    name = "cclib",
    srcs = [
        "src/dynamic_reconfigure_config_init_mutex.cpp",
    ],
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    strip_include_prefix = "include",
    deps = [
        "@boost//:thread",
    ],
)

# Tests

cc_test(
    name = "ref_server",
    srcs = [
        "test/ref_server.cpp",
    ],
    deps = [
        ":cclib",
        ":dynamic_reconfigure_cpp",
        "@roscpp_repo//:cclib",
    ],
)

cc_test(
    name = "simple_client",
    srcs = [
        "test/test_client.cpp",
    ],
    deps = [
        ":cclib",
        ":dynamic_reconfigure_cpp",
        "@boost//:chrono",
        "@gtest//:main",
        "@roscpp_repo//:cclib",
    ],
)
