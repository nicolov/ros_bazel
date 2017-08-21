package(default_visibility = ["//visibility:public"])

cc_library(
    name = "cclib",
    srcs = [
        "src/bag.cpp",
        "src/bag_player.cpp",
        "src/buffer.cpp",
        "src/bz2_stream.cpp",
        "src/chunked_file.cpp",
        "src/lz4_stream.cpp",
        "src/message_instance.cpp",
        "src/query.cpp",
        "src/stream.cpp",
        "src/uncompressed_stream.cpp",
        "src/view.cpp",
    ],
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    strip_include_prefix = "include",
    deps = [
        "@boost//:headers",
        "@bz2",
        "@cpp_common_repo//:cclib",
        "@roscpp_serialization_repo//:cclib",
        "@roscpp_traits_repo//:cclib",
        "@roslz4_repo//:cclib",
        "@rostime_repo//:cclib",
    ],
)
