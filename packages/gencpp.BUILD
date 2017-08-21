package(default_visibility = ["//visibility:public"])

py_library(
    name = "pylib",
    srcs = glob(["src/**/*.py"]),
    imports = ["src"],
    deps = [
        "@genmsg_repo//:pylib",
    ],
)

py_binary(
    name = "gencpp_exe",
    srcs = ["scripts/gen_cpp.py"],
    main = "scripts/gen_cpp.py",
    deps = [
        ":pylib",
    ],
)
