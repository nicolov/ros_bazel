package(default_visibility = ["//visibility:public"])

cc_library(
    name = "console_bridge",
    srcs = glob(["src/**/*.cpp"]),
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    strip_include_prefix = "include",
    deps = [
        "@boost//:thread",
    ],
)
