package(default_visibility = ["//visibility:public"])

cc_library(
    name = "cclib",
    srcs = [],
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    strip_include_prefix = "include",
    deps = [
        "@tf2_repo//:cclib",
        "@orocos_kdl_repo//:cclib",
    ],
)

cc_test(
    name = "test_tomsg_frommsg",
    srcs = [
        "test/test_tomsg_frommsg.cpp",
    ],
    deps = [
        ":cclib",
        "@gtest//:main",
    ],
)
