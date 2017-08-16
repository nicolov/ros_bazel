package(default_visibility = ["//visibility:public"])

cc_library(
    name='cclib',
    srcs=glob(['src/**/*.cpp']),
    hdrs=glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix='include',
    deps=[
        '@console_bridge',
        '@poco//:foundation',
    ],
)

cc_library(
    name = 'class_loader_TestPlugins1',
    srcs = [
        'test/plugins1.cpp',
        'test/base.h',
    ],
    deps = [
        ':cclib',
    ],
)

cc_library(
    name = 'test_plugins2',
    srcs = [
        'test/plugins1.cpp',
        'test/base.h',  
    ],
    deps = [
        ':cclib',
    ],
)

cc_test(
    name = 'utest',
    srcs = [
        'test/utest.cpp',
        'test/base.h',
    ],
    deps = [
        ':cclib',
        '@boost//:system',
        '@gtest//:main',
    ],
    data = [
        ':class_loader_TestPlugins1',
    ],
)
