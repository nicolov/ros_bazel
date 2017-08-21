# -*- python -*-

cc_library(
    name = "without_main",
    testonly = 1,
    srcs = glob(
        [
            # "googlemock/src/*.cc",
            "src/*.cc",
            "src/*.h",
        ],
        exclude = [
            # "googlemock/src/gmock_main.cc",
            "src/gtest_main.cc",
            # "googlemock/src/gmock-all.cc",
            "src/gtest-all.cc",
        ],
    ),
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.h",
    ]),
    copts = ["-Wno-unused-const-variable"],
    includes = [
        # "googlemock",
        # "googlemock/include",
        # "googletest",
        "include",
        "",
    ],
    linkopts = ["-pthread"],
    linkstatic = 1,
    visibility = ["//visibility:public"],
)

cc_library(
    name = "main",
    testonly = 1,
    srcs = ["src/gtest_main.cc"],
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        ":without_main",
    ],
)
