package(default_visibility = ["//visibility:public"])

load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "catkin_python_library",
)

catkin_python_library(
    name = 'pylib',
    py_module_name = 'genpy',
    deps=[
        '@genmsg//:pylib',
    ],
)

py_binary(
    name='genmsg_py_exe',
    main='scripts/genmsg_py.py',
    srcs=['scripts/genmsg_py.py'],
    deps=[
        ':pylib'
    ],
)

py_binary(
    name='gensrv_py_exe',
    main='scripts/gensrv_py.py',
    srcs=['scripts/gensrv_py.py'],
    deps=[
        ':pylib'
    ],
)
