package(default_visibility = ["//visibility:public"])

# TODO: header files are somehow found even when not declared, fix this.
cc_library(
    name='uuid',
    hdrs=glob(['uuid/*.h']),
    srcs=[
        'lib/x86_64-linux-gnu/libuuid.a',
        'lib/x86_64-linux-gnu/libuuid.so',
    ],
    licenses = ["notice"],
)
