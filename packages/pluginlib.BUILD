package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "catkin_package",
     "symlink_files")

# Needed for testing
catkin_package(
    ros_package_name = 'pluginlib')

cc_library(
    name='cclib',
    srcs=[],
    hdrs=glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix='include',
    deps=[
        '@class_loader//:cclib',
        '@rosconsole//:cclib',
        '@roslib//:cclib',
        '@boost//:system',
        '@boost//:filesystem',
    ],
)

cc_binary(
    name = 'plugin_tool',
    srcs = [
        'src/plugin_tool.cpp',
    ],
    deps = [
        ':cclib',
    ],
)

cc_library(
    name = 'test_plugins',
    srcs = [
        'test/test_base.h',
        'test/test_plugins.cpp',
        'test/test_plugins.h',
    ],
    deps = [
        ':cclib',
    ],
)

cc_test(
    name='utest',
    srcs = [
        'test/utest.cpp',
        'test/test_base.h',
    ],
    deps=[
        ':cclib',
        '@gtest//:main',
    ],
    data = [
        ':test_plugins',
    ],
)
