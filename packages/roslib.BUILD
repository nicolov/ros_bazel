package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "catkin_python_library",
)

cc_library(
    name='cclib',
    srcs=[
        'src/package.cpp',
    ],
    hdrs=glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix='include',
    deps=[
        '@boost//:thread',
        '@rospack//:cclib',
    ],
)

cc_test(
    name='utest',
    srcs=['test/utest.cpp'],
    deps=[
        ':cclib',
        '@gtest//:main',
    ],
)

cc_test(
    name='test_package',
    srcs=['test/package.cpp'],
    deps=[
        ':cclib',
        '@gtest//:main',
    ],
)

catkin_python_library(
    name = 'pylib',
    py_module_name = 'roslib',
    deps = [
        '@catkin//:pylib',
    ],
)

