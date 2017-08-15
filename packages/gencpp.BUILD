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
    name='gencpp_exe',
    main='scripts/gen_cpp.py',
    srcs=['scripts/gen_cpp.py'],
    deps=[
        ':pylib',
    ],
)
