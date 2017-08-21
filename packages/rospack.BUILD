package(default_visibility = ["//visibility:public"])

cc_library(
    name = "cclib",
    srcs = [
        "src/rospack.cpp",
        "src/rospack_backcompat.cpp",
        "src/rospack_cmdline.cpp",
        "src/rospack_cmdline.h",
        "src/rospack_main.cpp",
        "src/utils.cpp",
        "src/utils.h",
    ],
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    defines = [
        "ROSPACK_API_BACKCOMPAT_V1",
    ],
    strip_include_prefix = "include",
    deps = [
        "@boost//:filesystem",
        "@boost//:program_options",
        "@boost//:system",
        "@com_github_nicolov_ros_bazel//third_party/tinyxml",
        "@python",
    ],
)

cc_binary(
    name = "rospack",
    srcs = [
        "src/rospack_main.cpp",
    ],
    deps = [
        ":cclib",
    ],
)

cc_binary(
    name = "rosstack",
    srcs = [
        "src/rosstack_main.cpp",
    ],
    deps = [
        ":cclib",
    ],
)
