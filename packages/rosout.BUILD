package(default_visibility = ["//visibility:public"])

cc_binary(
    name='rosout',
    srcs=[
        'src/rosout.c',
    ],
    deps=[
        '@roscpp//:cclib',
        '@rosgraph_msgs//:msgs_cpp',
    ],
)
