load("@com_github_nicolov_ros_bazel//tools:github.bzl", "github_archive")
load("@com_github_nicolov_ros_bazel//tools:python.bzl", "python_repository")

def ros_deps():
    github_archive(
        name = "gtest",
        repository = "google/googletest",
        commit = "release-1.6.0",
        sha256 = "5fbc058e5b662b9c86d93ac76fefb58eec89cbf26144b49669a38ecb62758447",  # noqa
        build_file = "@com_github_nicolov_ros_bazel//:third_party/gtest.BUILD",
    )

    github_archive(
        name = "console_bridge",
        repository = "ros/console_bridge",
        commit = "0.2.5",
        sha256 = "a8843e1d8447c099ef271a942af1c57294c4c51f43bbde2c6d03f7b805989fa7",
        build_file = "@com_github_nicolov_ros_bazel//:third_party/console_bridge.BUILD"
    )

    native.new_http_archive(
        name = "eigen_archive",
        urls = [
            "http://mirror.bazel.build/bitbucket.org/eigen/eigen/get/f3a22f35b044.tar.gz",
            "https://bitbucket.org/eigen/eigen/get/f3a22f35b044.tar.gz",
        ],
        sha256 = "ca7beac153d4059c02c8fc59816c82d54ea47fe58365e8aded4082ded0b820c4",
        strip_prefix = "eigen-eigen-f3a22f35b044",
        build_file = "@com_github_nicolov_ros_bazel//:third_party/eigen.BUILD",
    )

    github_archive(
        name = "poco",
        repository = "pocoproject/poco",
        commit = "poco-1.4.5-release",
        sha256 = "3f34d125080d31f20d8abb1642366a6d61f8c723de1fd645719e897fff78c174",
        build_file = "@com_github_nicolov_ros_bazel//:third_party/poco.BUILD",
    )

    # Within this repo, tinyxml is used like:
    # '@com_github_nicolov_ros_bazel//third_party/tinyxml' (see rospack),
    # but we also export here, so that it can directly be used by dependents
    native.local_repository(
        name = "tinyxml",
        path = "@com_github_nicolov_ros_bazel//:third_party/tinyxml",
    )

    native.new_local_repository(
        name = "glog",
        path = "/usr",
        build_file = "@com_github_nicolov_ros_bazel//:third_party/glog.BUILD",
    )

    native.new_local_repository(
        name = "lz4",
        path = "/usr",
        build_file = "@com_github_nicolov_ros_bazel//:third_party/lz4.BUILD",
    )

    native.new_local_repository(
        name = "bz2",
        path = "/usr",
        build_file = "@com_github_nicolov_ros_bazel//:third_party/bz2.BUILD",
    )

    native.new_local_repository(
        name = "uuid",
        path = "/usr",
        build_file = "@com_github_nicolov_ros_bazel//:third_party/uuid.BUILD",
    )

    python_repository(
        name = "python",
        version = "2.7",
    )

def opencv_archive(local_root_path):
    native.new_local_repository(
        name = "opencv",
        path = local_root_path,
        build_file = "@com_github_nicolov_ros_bazel//:third_party/opencv.BUILD",
    )
