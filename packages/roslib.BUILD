package(default_visibility = ["//visibility:public"])

cc_library(
    name = "cclib",
    srcs = [
        "src/package.cpp",
    ],
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    strip_include_prefix = "include",
    deps = [
        "@boost//:thread",
        "@rospack_repo//:cclib",
    ],
)

cc_test(
    name = "utest",
    srcs = ["test/utest.cpp"],
    deps = [
        ":cclib",
        "@gtest//:main",
    ],
)

cc_test(
    name = "test_package",
    srcs = ["test/package.cpp"],
    deps = [
        ":cclib",
        "@gtest//:main",
    ],
)

py_library(
    name = "pylib",
    srcs = glob(["src/**/*.py"]),
    imports = ["src"],
    deps = [
        "@catkin_repo//:pylib",
    ],
)
