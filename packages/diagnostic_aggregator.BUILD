package(default_visibility = ["//visibility:public"])

cc_library(
    name = "cclib",
    srcs = [
        "src/aggregator.cpp",
        "src/analyzer_group.cpp",
        "src/discard_analyzer.cpp",
        "src/generic_analyzer.cpp",
        "src/ignore_analyzer.cpp",
        "src/status_item.cpp",
    ],
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    strip_include_prefix = "include",
    deps = [
        "@bondcpp_repo//:cclib",
        "@diagnostic_msgs_repo//:msgs_cpp",
        "@pluginlib_repo//:cclib",
        "@roscpp_repo//:cclib",
        "@xmlrpcpp_repo//:cclib",
    ],
)

cc_binary(
    name = "aggregator_node",
    srcs = [
        "src/aggregator_node.cpp",
    ],
    deps = [
        ":cclib",
    ],
)
