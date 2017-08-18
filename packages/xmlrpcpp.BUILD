package(default_visibility = ["//visibility:public"])

cc_library(
    name='cclib',
    srcs=[
        'src/XmlRpcClient.cpp',
        'src/XmlRpcDispatch.cpp',
        'src/XmlRpcServer.cpp',
        'src/XmlRpcServerConnection.cpp',
        'src/XmlRpcServerMethod.cpp',
        'src/XmlRpcSocket.cpp',
        'src/XmlRpcSource.cpp',
        'src/XmlRpcUtil.cpp',
        'src/XmlRpcValue.cpp',
    ],
    hdrs=glob(['include/**/*.h', 'include/**/*.hpp']),
    strip_include_prefix='include',
    deps=[
        '@cpp_common//:cclib',
    ],
)
