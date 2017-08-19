package(default_visibility = ["//visibility:public"])

cc_library(
    name = 'cclib',
    srcs = [
        'src/status_item.cpp',
        'src/analyzer_group.cpp',
        'src/generic_analyzer.cpp',
        'src/discard_analyzer.cpp',
        'src/ignore_analyzer.cpp',
        'src/aggregator.cpp',
    ],
    hdrs = glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix = 'include',
    deps = [
        '@diagnostic_msgs_repo//:msgs_cpp',
        '@pluginlib_repo//:cclib',
        '@roscpp_repo//:cclib',
        '@xmlrpcpp_repo//:cclib',
        '@bondcpp_repo//:cclib',
    ],
)

cc_binary(
    name = 'aggregator_node',
    srcs = [
        'src/aggregator_node.cpp',
    ],
    deps = [
        ':cclib',
    ],
)
