package(default_visibility = ["//visibility:public"])

cc_library(
    name = "opencv",
    srcs = glob([
        "lib/libopencv*.so*",
    ]),
    hdrs = glob([
        "include/opencv2/**/*.h",
        "include/opencv2/**/*.hpp",
    ]),
    licenses = ["notice"],
    strip_include_prefix = "include",
)
