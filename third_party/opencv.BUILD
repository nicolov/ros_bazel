package(default_visibility = ["//visibility:public"])

cc_library(
    name = 'opencv',
    hdrs = glob([
        'include/opencv2/**/*.h',
        'include/opencv2/**/*.hpp',
    ]),
    strip_include_prefix = 'include',
    srcs = glob([
        'lib/libopencv*.so*',
    ]),
    licenses = ["notice"],
)
