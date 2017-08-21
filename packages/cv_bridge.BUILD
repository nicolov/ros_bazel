package(default_visibility = ["//visibility:public"])

cc_library(
    name = "cclib",
    srcs = [
        "src/cv_bridge.cpp",
        "src/rgb_colors.cpp",
    ] + glob([
        # boost/endian lifted from v1.58
        "src/boost/**/*.h",
        "src/boost/**/*.hpp",
    ]),
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    strip_include_prefix = "include",
    deps = [
        "@boost//:headers",
        "@opencv",
        "@rosconsole_repo//:cclib",
        "@sensor_msgs_repo//:cclib",
    ],
)

cc_test(
    name = "utest",
    srcs = [
        "test/test_endian.cpp",
        "test/test_rgb_colors.cpp",
        "test/utest.cpp",
        "test/utest2.cpp",
    ],
    deps = [
        ":cclib",
        "@gtest//:main",
    ],
)
