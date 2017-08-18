package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/message_generation.bzl",
     "generate_messages")
load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "py_import_shim")

py_import_shim(
    py_module_name = 'std_msgs',
)

generate_messages(
    ros_package_name='rosgraph_msgs',
    deps=[
        '@std_msgs//:msgs',
    ],
)
