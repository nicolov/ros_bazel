package(default_visibility = ["//visibility:public"])

py_library(
    name='pylib',
    srcs=glob(['src/**/*.py']),
    imports=['src'],
    deps=[
        '@genmsg_repo//:pylib',
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
