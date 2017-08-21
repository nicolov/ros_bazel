package(default_visibility = ["//visibility:public"])

# Create a shim __init__.py that just imports symbols
# from the .so file
genrule(
    name = "init_shim",
    srcs = [],
    outs = ["__init__.py"],
    cmd = """echo "from netifaces import *\n" > $@""",
)

py_library(
    name = "netifaces",
    srcs = [
        "__init__.py",
    ],
    data = [
        "netifaces.so",
    ],
    imports = [
        ".",
    ],
)
