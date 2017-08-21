package(default_visibility = ["//visibility:public"])

load(
    "@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
    "catkin_package",
    "symlink_files",
)

# Needed for testing
catkin_package(
    ros_package_name = "pluginlib",
)

cc_library(
    name = "cclib",
    srcs = [],
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    strip_include_prefix = "include",
    deps = [
        "@boost//:filesystem",
        "@boost//:system",
        "@class_loader_repo//:cclib",
        "@rosconsole_repo//:cclib",
        "@roslib_repo//:cclib",
    ],
)

cc_binary(
    name = "plugin_tool",
    srcs = [
        "src/plugin_tool.cpp",
    ],
    deps = [
        ":cclib",
    ],
)

cc_library(
    name = "test_plugins",
    srcs = [
        "test/test_base.h",
        "test/test_plugins.cpp",
        "test/test_plugins.h",
    ],
    deps = [
        ":cclib",
    ],
)

cc_test(
    name = "utest",
    srcs = [
        "test/test_base.h",
        "test/utest.cpp",
    ],
    data = [
        ":test_plugins",
    ],
    deps = [
        ":cclib",
        "@gtest//:main",
    ],
)
