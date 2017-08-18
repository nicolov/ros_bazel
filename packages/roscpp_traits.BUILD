package(default_visibility = ["//visibility:public"])

cc_library(
    name='cclib',
    hdrs=glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix='include',
    deps=[
        '@cpp_common//:cclib',
        '@rostime//:cclib',
    ],
)
