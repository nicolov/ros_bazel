package(default_visibility = ["//visibility:public"])

cc_library(
    name = "headers",
    srcs = [
    ],
    hdrs = [
        "Foundation/include/Poco/" + x
        for x in [
            "Bugcheck.h",
            "Config.h",
            "Foundation.h",
            "Platform.h",
            "Platform_POSIX.h",
            "SharedLibrary.h",
            "SharedLibrary_UNIX.h",
            "Types.h",
            "Mutex.h",
            "Mutex_POSIX.h",
            "Exception.h",
            "ScopedLock.h",
            "Timestamp.h",
        ]
    ],
    includes = [
        "Foundation/include",
    ],
    licenses = ["notice"],
    strip_include_prefix = "Foundation/include",
)

cc_library(
    name = "foundation",
    srcs = [
        "Foundation/src/" + x
        for x in [
            "Exception.cpp",
            "Mutex.cpp",
            "SharedLibrary.cpp",
        ]
    ],
    hdrs = [
        "Foundation/src/" + x
        for x in [
            "Mutex_POSIX.cpp",
            "SharedLibrary_UNIX.cpp",
        ]
    ],
    linkopts = [
        "-ldl",
    ],
    deps = [
        ":headers",
    ],
)
