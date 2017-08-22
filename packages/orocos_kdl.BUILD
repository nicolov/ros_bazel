package(default_visibility = ["//visibility:public"])

load(
    "@com_github_nicolov_ros_bazel//:tools/cmake_configure_file.bzl",
    "cmake_configure_file",
)

cmake_configure_file(
    name = "config_h",
    src = "src/config.h.in",
    out = "config.h",
    defines = [
        "HAVE_STL_CONTAINER_INCOMPLETE_TYPES",
        "KDL_USE_NEW_TREE_INTERFACE",
        "KDL_VERSION=1.3.1",
        "KDL_VERSION_MAJOR=1",
        "KDL_VERSION_MINOR=3",
        "KDL_VERSION_PATCH=1",
    ],
)

# The CMake build install *.hpp files to a `kdl/` subfolder, so
# so we need to do the same. We add the original *.hpp to the
# srcs attribute of the cc_library, but also copy them to a
# new folder with the 'kdl/' prefix, and export those to
# dependent projects.
kdl_header_files = glob([
        "src/**/*.h",
        "src/**/*.hpp",
        "src/**/*.inl",
])
kdl_stripped_headers = [
    hdr[len("src/"):]
    for hdr in kdl_header_files
]
kdl_exported_headers = [
    "kdl/{}".format(hdr)
    for hdr in kdl_stripped_headers
]

[genrule(
    name = 'copy_hdr_' + hdr,
    srcs = ['src/' + hdr],
    outs = ['kdl/{}'.format(hdr)],
    cmd = "cp $(SRCS) $@",
) for hdr in kdl_stripped_headers]

cc_library(
    name = "cclib",
    srcs = glob([
        "src/**/*.cpp",
        "src/**/*.cxx",
        "src/**/*.h",
        "src/**/*.hpp",
    ]) + [
        "config.h",
    ],
    # kdl_header_files are the files under src/ included by
    # the orocos source code. kdl_exported_headers are the copies
    # under kdl/ as expected by dependent ROS projects.
    hdrs = kdl_header_files + kdl_exported_headers,
    # Export the genfiles folder with headers under `kdl/`
    includes = ["."],
    deps = [
        "@boost//:headers",
        "@eigen",
    ],
)
