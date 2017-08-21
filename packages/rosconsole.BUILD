package(default_visibility = ["//visibility:public"])

cc_library(
    name = "cclib",
    srcs = [
        "src/rosconsole/impl/rosconsole_glog.cpp",
        "src/rosconsole/rosconsole.cpp",
        "src/rosconsole/rosconsole_backend.cpp",
    ],
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    strip_include_prefix = "include",
    deps = [
        "@boost//:regex",
        "@boost//:system",
        "@boost//:thread",
        "@cpp_common_repo//:cclib",
        "@glog",
        "@rostime_repo//:cclib",
    ],
)

# Tests explicitly depend on the log4cxx backend :(

# cc_test(
#     name='utest',
#     srcs=['test/utest.cpp'],
#     deps=[
#         ':rosconsole',
#         '@gtest//:main',
#     ],
# )

cc_test(
    name = "assertion_test",
    srcs = ["test/assertion_test.cpp"],
    deps = [
        ":cclib",
        "@gtest//:main",
    ],
)

# cc_test(
#     name='thread_test',
#     srcs=['test/thread_test.cpp'],
#     deps=[
#         ':rosconsole',
#         '@gtest//:main',
#     ],
# )
