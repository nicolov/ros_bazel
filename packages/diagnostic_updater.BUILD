package(default_visibility = ["//visibility:public"])

cc_library(
    name = "cclib",
    srcs = glob([
        "src/**/*.cpp",
    ]),
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    strip_include_prefix = "include",
    deps = [
        "@boost//:system",
        "@diagnostic_msgs_repo//:msgs_cpp",
        "@roscpp_repo//:cclib",
    ],
)

cc_binary(
    name = "example",
    srcs = [
        "src/example.cpp",
    ],
    deps = [
        ":cclib",
    ],
)
