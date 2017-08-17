package(default_visibility = ["//visibility:public"])

cc_library(
    name='cclib',
    srcs=[
        'src/connection.cpp',
    ],
    hdrs=glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix='include',
    deps=[
        '@rosconsole_repo//:cclib',
        '@roscpp_repo//:cclib',
    ],
)

cc_test(
    name='msg_cache_unittest',
    srcs=['test/msg_cache_unittest.cpp'],
    deps=[
        ':cclib',
        '@gtest//:main',
    ],
)
