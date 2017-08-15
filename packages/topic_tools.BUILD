package(default_visibility = ["//visibility:public"])

cc_library(
    name='cclib',
    srcs=[
        'src/shape_shifter.cpp',
        'src/parse.cpp',
    ],
    hdrs=glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix='include',
    deps=[
        '@roscpp_repo//:cclib',
    ],
)
