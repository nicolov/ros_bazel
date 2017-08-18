package(default_visibility = ["//visibility:public"])

cc_library(
    name='cclib',
    srcs=[
        'src/pinhole_camera_model.cpp',
        'src/stereo_camera_model.cpp',
    ],
    hdrs=glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix='include',
    deps=[
        '@boost//:system',
        '@cpp_common//:cclib',
        '@opencv',
        '@sensor_msgs//:cclib',
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
