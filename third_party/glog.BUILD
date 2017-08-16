package(default_visibility = ["//visibility:public"])

# TODO: header files are somehow found even when not declared, fix this.
cc_library(
    name='glog',
    # hdrs=glob(['glog/*.h']),
    srcs=[
        # 'lib/x86_64-linux-gnu/libgflags.a',
        'lib/x86_64-linux-gnu/libgflags.so',
        # 'lib/x86_64-linux-gnu/libglog.a',
        'lib/x86_64-linux-gnu/libglog.so',
        'lib/x86_64-linux-gnu/libunwind.so.8',
    ],
    licenses = ["notice"],
)
