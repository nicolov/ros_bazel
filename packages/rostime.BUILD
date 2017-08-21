package(default_visibility = ["//visibility:public"])

cc_library(
    name = "cclib",
    srcs = glob(["src/**/*.cpp"]),
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    strip_include_prefix = "include",
    deps = [
        "@boost//:system",
        "@cpp_common_repo//:cclib",
    ],
)

cc_test(
    name = "test",
    srcs = ["test/time.cpp"],
    deps = [
        ":cclib",
        "@gtest//:main",
    ],
)
