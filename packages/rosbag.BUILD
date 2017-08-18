package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "add_py_extension",
     "catkin_python_library")

cc_library(
    name = 'cclib',
    srcs = [
        'src/player.cpp',
        'src/recorder.cpp',
        'src/time_translator.cpp',
    ],
    hdrs = glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix = 'include',
    deps = [
        '@rosbag_storage//:cclib',
        '@roscpp//:cclib',
        '@topic_tools//:cclib',
    ],
)

cc_binary(
    name = 'record',
    srcs = [
        'src/record.cpp'
    ],
    deps = [
        ':cclib',
        '@boost//:program_options',
    ],
)

cc_binary(
    name = 'play',
    srcs = [
        'src/play.cpp'
    ],
    deps = [
        ':cclib',
        '@boost//:program_options',
    ],
)

catkin_python_library(
    name = 'pylib',
    py_module_name = 'rosbag',
    deps = [
        '@rospy//:pylib',
    ],
)

add_py_extension(src = 'scripts/rosbag')

py_binary(
    name = 'rosbag',
    srcs = [
        'scripts/rosbag.py',
    ],
    deps = [
        ':pylib',
    ],
)
