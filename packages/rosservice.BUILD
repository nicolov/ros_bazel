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
        "@genpy_repo//:pylib",
        "@rosgraph_repo//:pylib",
        "@roslib_repo//:pylib",
        "@rosmsg_repo//:pylib",
        "@rospy_repo//:pylib",
    ],
)

add_py_extension(src = "scripts/rosservice")

py_binary(
    name = "rosservice",
    srcs = [
        "scripts/rosservice.py",
    ],
    deps = [
        ":pylib",
    ],
)
