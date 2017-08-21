package(default_visibility = ["//visibility:public"])

cc_library(
    name = "yaml_cpp",
    srcs = glob([
        "src/*.cpp",
        "src/*.h",
    ]),
    hdrs = glob([
        "include/yaml-cpp/*.h",
        "include/yaml-cpp/node/**/*.h",
    ]),
    defines = [
        "YAML_CPP_NO_CONTRIB",
    ],
    strip_include_prefix = "include",
    deps = [
        "@boost//:headers",
    ],
)
