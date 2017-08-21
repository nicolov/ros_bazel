package(default_visibility = ["//visibility:public"])

load(
    "@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
    "add_py_extension",
)

cc_library(
    name = "cclib",
    srcs = [
        "src/player.cpp",
        "src/recorder.cpp",
        "src/time_translator.cpp",
    ],
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    strip_include_prefix = "include",
    deps = [
        "@rosbag_storage_repo//:cclib",
        "@roscpp_repo//:cclib",
        "@topic_tools_repo//:cclib",
    ],
)

cc_binary(
    name = "record",
    srcs = [
        "src/record.cpp",
    ],
    deps = [
        ":cclib",
        "@boost//:program_options",
    ],
)

cc_binary(
    name = "play",
    srcs = [
        "src/play.cpp",
    ],
    deps = [
        ":cclib",
        "@boost//:program_options",
    ],
)

py_library(
    name = "pylib",
    srcs = glob(["src/**/*.py"]),
    imports = ["src"],
    deps = [
        "@rospy_repo//:pylib",
    ],
)

add_py_extension(src = "scripts/rosbag")

py_binary(
    name = "rosbag",
    srcs = [
        "scripts/rosbag.py",
    ],
    deps = [
        ":pylib",
    ],
)
