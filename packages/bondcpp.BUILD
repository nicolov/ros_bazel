package(default_visibility = ["//visibility:public"])

cc_library(
    name='cclib',
    srcs=[
        'src/bond.cpp',
        'src/BondSM_sm.cpp',
        'src/timeout.cpp',
    ],
    hdrs=glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix='include',
    deps=[
        '@bond_repo//:msgs_cpp',
        '@roscpp_repo//:cclib',
        '@smclib_repo//:cclib',
        '@uuid',
    ],
)
