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
        "@console_bridge",
        "@poco//:foundation",
    ],
)

# .so libraries for testing
# tests only run when the LD_LIBRARY_PATH points to the runfiles directory.
# https://groups.google.com/forum/#!topic/bazel-discuss/dhsZnRSXnTo
cc_binary(
    name = "libclass_loader_TestPlugins1.so",
    srcs = [
        "test/base.h",
        "test/plugins1.cpp",
    ],
    linkshared = 1,
    linkstatic = 0,
    deps = [
        ":cclib",
    ],
)

cc_binary(
    name = "libclass_loader_TestPlugins2.so",
    srcs = [
        "test/base.h",
        "test/plugins2.cpp",
    ],
    linkshared = 1,
    linkstatic = 0,
    deps = [
        ":cclib",
    ],
)

cc_test(
    name = "utest",
    srcs = [
        "test/base.h",
        "test/utest.cpp",
    ],
    data = [
        ":libclass_loader_TestPlugins1.so",
        ":libclass_loader_TestPlugins2.so",
    ],
    deps = [
        ":cclib",
        "@boost//:system",
        "@gtest//:main",
    ],
)
