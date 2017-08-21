package(default_visibility = ["//visibility:public"])

py_library(
    name = "pylib",
    srcs = glob(["src/**/*.py"]),
    imports = ["src"],
    deps = [
        "@roscpp_repo//:msgs_py",
        "@rosgraph_msgs_repo//:msgs_py",
        "@rosgraph_repo//:pylib",
        "@roslib_repo//:pylib",
        "@std_msgs_repo//:msgs_py",
    ],
)
