package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "catkin_python_library",
)

catkin_python_library(
    name = 'pylib',
    py_module_name = 'gencpp',
    deps=[
        '@genmsg//:pylib',
    ],
)

py_binary(
    name='gencpp_exe',
    main='scripts/gen_cpp.py',
    srcs=['scripts/gen_cpp.py'],
    deps=[
        ':pylib',
    ],
)
