package(default_visibility = ["//visibility:public"])

cc_library(
    name='cclib',
    srcs=glob(['src/**/*.cpp']),
    hdrs=glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix='include',
    deps=[
        '@cpp_common//:cclib',
        '@boost//:system',
    ],
)

cc_test(
    name='test',
    srcs=['test/time.cpp'],
    deps=[
        ':cclib',
        '@gtest//:main',
    ],
)
