package(default_visibility = ["//visibility:public"])

cc_binary(
    name='rosout',
    srcs=[
        'src/rosout.c',
    ],
    deps=[
        '@roscpp_repo//:cclib',
        '@rosgraph_msgs_repo//:msgs_cpp',
    ],
)
