package(default_visibility = ["//visibility:public"])

cc_library(
    name='cclib',
    hdrs=glob(['include/**/*.h', 'include/**/*.hpp']),
    srcs=[
        'src/serialization.cpp',
    ],
    strip_include_prefix='include',
    deps=[
        '@roscpp_traits_repo//:cclib',
    ],
)
