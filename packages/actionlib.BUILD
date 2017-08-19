package(default_visibility = ["//visibility:public"])

# load("@com_github_nicolov_ros_bazel//:tools/message_generation.bzl",
#      "generate_messages")

# generate_messages(
#     ros_package_name='actionlib',
#     deps = [
#         '@std_msgs_repo//:msgs',
#     ],
# )

cc_library(
    name = 'cclib',
    srcs = [
        'src/connection_monitor.cpp',
        'src/goal_id_generator.cpp',
    ],
    hdrs = glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix = 'include',
    deps = [
        '@actionlib_msgs_repo//:msgs_cpp',
        '@roscpp_repo//:cclib',
        # '@bond_repo//:msgs_cpp',
        # '@roscpp_repo//:cclib',
        # '@smclib_repo//:cclib',
        # '@uuid',
    ],
)
