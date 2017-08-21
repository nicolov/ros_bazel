package(default_visibility = ["//visibility:public"])

cc_library(
    name = "cclib",
    srcs = [
        "src/camera_info_manager.cpp",
    ],
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    strip_include_prefix = "include",
    deps = [
        "@camera_calibration_parsers_repo//:cclib",
        "@image_transport_repo//:cclib",
        "@roscpp_repo//:cclib",
        "@roslib_repo//:cclib",
    ],
)
