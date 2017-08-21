package(default_visibility = ["//visibility:public"])

cc_library(
    name = "cclib",
    srcs = [
        "src/parse.cpp",
        "src/parse_ini.cpp",
        "src/parse_yml.cpp",
    ],
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    defines = [
        "HAVE_NEW_YAMLCPP",
    ],
    strip_include_prefix = "include",
    deps = [
        "@rosconsole_repo//:cclib",
        "@roscpp_repo//:cclib",
        "@sensor_msgs_repo//:cclib",
        "@sensor_msgs_repo//:msgs_cpp",
        "@yaml_cpp",
    ],
)

cc_binary(
    name = "convert",
    srcs = [
        "src/convert.cpp",
    ],
    deps = [
        ":cclib",
    ],
)
