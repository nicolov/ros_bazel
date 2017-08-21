package(default_visibility = ["//visibility:public"])

# TODO: header files are somehow found even when not declared, fix this.
cc_library(
    name = "uuid",
    srcs = [
        "lib/x86_64-linux-gnu/libuuid.a",
        "lib/x86_64-linux-gnu/libuuid.so",
    ],
    hdrs = [
        "include/uuid/uuid.h",
    ],
    licenses = ["notice"],
    strip_include_prefix = "include",
)
