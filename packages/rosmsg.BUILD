package(default_visibility = ["//visibility:public"])

load(
    "@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
    "add_py_extension",
)

py_library(
    name = "pylib",
    srcs = glob(["src/**/*.py"]),
    imports = ["src"],
    deps = [
        "@rosbag_repo//:pylib",
        "@roslib_repo//:pylib",
    ],
)

add_py_extension(src = "scripts/rosmsg")

py_binary(
    name = "rosmsg",
    srcs = [
        "scripts/rosmsg.py",
    ],
    deps = [
        ":pylib",
    ],
)

add_py_extension(src = "scripts/rossrv")

py_binary(
    name = "rossrv",
    srcs = [
        "scripts/rossrv.py",
    ],
    deps = [
        ":pylib",
    ],
)
