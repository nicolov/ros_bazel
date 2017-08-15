package(default_visibility = ["//visibility:public"])

cc_library(
    name='cclib',
    srcs=[
        'src/lz4s.c',
        'src/xxhash.c',
        'src/xxhash.h',
    ],
    hdrs=glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix='include',
    deps=[
        '@lz4',
    ],
)
