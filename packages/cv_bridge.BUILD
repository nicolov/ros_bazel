package(default_visibility = ["//visibility:public"])

cc_library(
    name='cclib',
    srcs=[
        'src/cv_bridge.cpp',
        'src/rgb_colors.cpp',
    ] + glob([
        # boost/endian lifted from v1.58
        'src/boost/**/*.h',
        'src/boost/**/*.hpp',
    ]),
    hdrs=glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix='include',
    deps=[
        '@boost//:headers',
        '@rosconsole//:cclib',
        '@opencv',
        '@sensor_msgs//:cclib',
    ],
)

cc_test(
    name = 'utest',
    srcs = [
        'test/test_endian.cpp',
        'test/utest.cpp',
        'test/utest2.cpp',
        'test/test_rgb_colors.cpp',
    ],
    deps = [
        ':cclib',
        '@gtest//:main',
    ],
)
