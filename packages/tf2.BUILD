package(default_visibility = ["//visibility:public"])

cc_library(
    name='cclib',
    srcs=[
        'src/buffer_core.cpp',
        'src/cache.cpp',
        'src/static_cache.cpp',
    ],
    hdrs=glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix='include',
    deps=[
        '@geometry_msgs//:msgs_cpp',
        '@roscpp_serialization//:cclib',
        '@roscpp_traits//:cclib',
        '@rostime//:cclib',
        '@std_msgs//:msgs_cpp',
        '@tf2_msgs//:msgs_cpp',
    ],
)

cc_test(
    name='test_cache_unittest',
    srcs=['test/cache_unittest.cpp'],
    deps=[
        ':cclib',
        '@gtest//:main',
    ],
)

cc_test(
    name='test_static_cache_unittest',
    srcs=['test/static_cache_test.cpp'],
    deps=[
        ':cclib',
        '@gtest//:main',
    ],
)

cc_test(
    name='test_simple',
    srcs=['test/simple_tf2_core.cpp'],
    deps=[
        ':cclib',
        '@gtest//:main',
        '@roscpp//:cclib',
    ],
)
