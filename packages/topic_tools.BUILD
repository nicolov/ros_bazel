package(default_visibility = ["//visibility:public"])

cc_library(
    name = "cclib",
    srcs = [
        "src/parse.cpp",
        "src/shape_shifter.cpp",
    ],
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    strip_include_prefix = "include",
    deps = [
        "@roscpp_repo//:cclib",
    ],
)
