def ros_packages():
    native.new_http_archive(
        name = "catkin_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/catkin.BUILD",
        url = "https://github.com/ros-gbp/catkin-release/archive/release/indigo/catkin/0.6.19-0.tar.gz",
        strip_prefix = "catkin-release-release-indigo-catkin-0.6.19-0",
    )

    native.new_http_archive(
        name = "cmake_modules_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/cmake_modules.BUILD",
        url = "https://github.com/ros-gbp/cmake_modules-release/archive/release/indigo/cmake_modules/0.3.3-0.tar.gz",
        strip_prefix = "cmake_modules-release-release-indigo-cmake_modules-0.3.3-0",
    )

    native.new_http_archive(
        name = "cpp_common_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/cpp_common.BUILD",
        url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/indigo/cpp_common/0.5.8-0.tar.gz",
        strip_prefix = "roscpp_core-release-release-indigo-cpp_common-0.5.8-0",
    )

    native.new_http_archive(
        name = "gencpp_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/gencpp.BUILD",
        url = "https://github.com/ros-gbp/gencpp-release/archive/release/indigo/gencpp/0.5.5-0.tar.gz",
        strip_prefix = "gencpp-release-release-indigo-gencpp-0.5.5-0",
    )

    native.new_http_archive(
        name = "genlisp_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/genlisp.BUILD",
        url = "https://github.com/ros-gbp/genlisp-release/archive/release/indigo/genlisp/0.4.15-0.tar.gz",
        strip_prefix = "genlisp-release-release-indigo-genlisp-0.4.15-0",
    )

    native.new_http_archive(
        name = "genmsg_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/genmsg.BUILD",
        url = "https://github.com/ros-gbp/genmsg-release/archive/release/indigo/genmsg/0.5.8-0.tar.gz",
        strip_prefix = "genmsg-release-release-indigo-genmsg-0.5.8-0",
    )

    native.new_http_archive(
        name = "genpy_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/genpy.BUILD",
        url = "https://github.com/ros-gbp/genpy-release/archive/release/indigo/genpy/0.5.10-0.tar.gz",
        strip_prefix = "genpy-release-release-indigo-genpy-0.5.10-0",
    )

    native.new_http_archive(
        name = "message_filters_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/message_filters.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/message_filters/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-message_filters-1.11.21-0",
    )

    native.new_http_archive(
        name = "message_generation_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/message_generation.BUILD",
        url = "https://github.com/ros-gbp/message_generation-release/archive/release/indigo/message_generation/0.2.10-0.tar.gz",
        strip_prefix = "message_generation-release-release-indigo-message_generation-0.2.10-0",
    )

    native.new_http_archive(
        name = "message_runtime_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/message_runtime.BUILD",
        url = "https://github.com/ros-gbp/message_runtime-release/archive/release/indigo/message_runtime/0.4.12-0.tar.gz",
        strip_prefix = "message_runtime-release-release-indigo-message_runtime-0.4.12-0",
    )

    native.new_http_archive(
        name = "mk_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/mk.BUILD",
        url = "https://github.com/ros-gbp/ros-release/archive/release/indigo/mk/1.11.14-0.tar.gz",
        strip_prefix = "ros-release-release-indigo-mk-1.11.14-0",
    )

    native.new_http_archive(
        name = "ros_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/ros.BUILD",
        url = "https://github.com/ros-gbp/ros-release/archive/release/indigo/ros/1.11.14-0.tar.gz",
        strip_prefix = "ros-release-release-indigo-ros-1.11.14-0",
    )

    native.new_http_archive(
        name = "ros_comm_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/ros_comm.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/ros_comm/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-ros_comm-1.11.21-0",
    )

    native.new_http_archive(
        name = "rosbag_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosbag.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/rosbag/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-rosbag-1.11.21-0",
    )

    native.new_http_archive(
        name = "rosbag_storage_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosbag_storage.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/rosbag_storage/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-rosbag_storage-1.11.21-0",
    )

    native.new_http_archive(
        name = "rosbash_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosbash.BUILD",
        url = "https://github.com/ros-gbp/ros-release/archive/release/indigo/rosbash/1.11.14-0.tar.gz",
        strip_prefix = "ros-release-release-indigo-rosbash-1.11.14-0",
    )

    native.new_http_archive(
        name = "rosboost_cfg_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosboost_cfg.BUILD",
        url = "https://github.com/ros-gbp/ros-release/archive/release/indigo/rosboost_cfg/1.11.14-0.tar.gz",
        strip_prefix = "ros-release-release-indigo-rosboost_cfg-1.11.14-0",
    )

    native.new_http_archive(
        name = "rosbuild_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosbuild.BUILD",
        url = "https://github.com/ros-gbp/ros-release/archive/release/indigo/rosbuild/1.11.14-0.tar.gz",
        strip_prefix = "ros-release-release-indigo-rosbuild-1.11.14-0",
    )

    native.new_http_archive(
        name = "rosclean_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosclean.BUILD",
        url = "https://github.com/ros-gbp/ros-release/archive/release/indigo/rosclean/1.11.14-0.tar.gz",
        strip_prefix = "ros-release-release-indigo-rosclean-1.11.14-0",
    )

    native.new_http_archive(
        name = "rosconsole_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosconsole.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/rosconsole/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-rosconsole-1.11.21-0",
    )

    native.new_http_archive(
        name = "roscpp_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/roscpp.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/roscpp/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-roscpp-1.11.21-0",
    )

    native.new_http_archive(
        name = "roscpp_serialization_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/roscpp_serialization.BUILD",
        url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/indigo/roscpp_serialization/0.5.8-0.tar.gz",
        strip_prefix = "roscpp_core-release-release-indigo-roscpp_serialization-0.5.8-0",
    )

    native.new_http_archive(
        name = "roscpp_traits_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/roscpp_traits.BUILD",
        url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/indigo/roscpp_traits/0.5.8-0.tar.gz",
        strip_prefix = "roscpp_core-release-release-indigo-roscpp_traits-0.5.8-0",
    )

    native.new_http_archive(
        name = "roscreate_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/roscreate.BUILD",
        url = "https://github.com/ros-gbp/ros-release/archive/release/indigo/roscreate/1.11.14-0.tar.gz",
        strip_prefix = "ros-release-release-indigo-roscreate-1.11.14-0",
    )

    native.new_http_archive(
        name = "rosgraph_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosgraph.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/rosgraph/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-rosgraph-1.11.21-0",
    )

    native.new_http_archive(
        name = "rosgraph_msgs_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosgraph_msgs.BUILD",
        url = "https://github.com/ros-gbp/ros_comm_msgs-release/archive/release/indigo/rosgraph_msgs/1.11.2-0.tar.gz",
        strip_prefix = "ros_comm_msgs-release-release-indigo-rosgraph_msgs-1.11.2-0",
    )

    native.new_http_archive(
        name = "roslang_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/roslang.BUILD",
        url = "https://github.com/ros-gbp/ros-release/archive/release/indigo/roslang/1.11.14-0.tar.gz",
        strip_prefix = "ros-release-release-indigo-roslang-1.11.14-0",
    )

    native.new_http_archive(
        name = "roslaunch_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/roslaunch.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/roslaunch/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-roslaunch-1.11.21-0",
    )

    native.new_http_archive(
        name = "roslib_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/roslib.BUILD",
        url = "https://github.com/ros-gbp/ros-release/archive/release/indigo/roslib/1.11.14-0.tar.gz",
        strip_prefix = "ros-release-release-indigo-roslib-1.11.14-0",
    )

    native.new_http_archive(
        name = "roslisp_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/roslisp.BUILD",
        url = "https://github.com/ros-gbp/roslisp-release/archive/release/indigo/roslisp/1.9.21-0.tar.gz",
        strip_prefix = "roslisp-release-release-indigo-roslisp-1.9.21-0",
    )

    native.new_http_archive(
        name = "roslz4_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/roslz4.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/roslz4/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-roslz4-1.11.21-0",
    )

    native.new_http_archive(
        name = "rosmake_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosmake.BUILD",
        url = "https://github.com/ros-gbp/ros-release/archive/release/indigo/rosmake/1.11.14-0.tar.gz",
        strip_prefix = "ros-release-release-indigo-rosmake-1.11.14-0",
    )

    native.new_http_archive(
        name = "rosmaster_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosmaster.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/rosmaster/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-rosmaster-1.11.21-0",
    )

    native.new_http_archive(
        name = "rosmsg_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosmsg.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/rosmsg/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-rosmsg-1.11.21-0",
    )

    native.new_http_archive(
        name = "rosnode_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosnode.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/rosnode/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-rosnode-1.11.21-0",
    )

    native.new_http_archive(
        name = "rosout_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosout.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/rosout/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-rosout-1.11.21-0",
    )

    native.new_http_archive(
        name = "rospack_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rospack.BUILD",
        url = "https://github.com/ros-gbp/rospack-release/archive/release/indigo/rospack/2.2.8-0.tar.gz",
        strip_prefix = "rospack-release-release-indigo-rospack-2.2.8-0",
    )

    native.new_http_archive(
        name = "rosparam_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosparam.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/rosparam/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-rosparam-1.11.21-0",
    )

    native.new_http_archive(
        name = "rospy_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rospy.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/rospy/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-rospy-1.11.21-0",
    )

    native.new_http_archive(
        name = "rosservice_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosservice.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/rosservice/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-rosservice-1.11.21-0",
    )

    native.new_http_archive(
        name = "rostest_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rostest.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/rostest/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-rostest-1.11.21-0",
    )

    native.new_http_archive(
        name = "rostime_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rostime.BUILD",
        url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/indigo/rostime/0.5.8-0.tar.gz",
        strip_prefix = "roscpp_core-release-release-indigo-rostime-0.5.8-0",
    )

    native.new_http_archive(
        name = "rostopic_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rostopic.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/rostopic/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-rostopic-1.11.21-0",
    )

    native.new_http_archive(
        name = "rosunit_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosunit.BUILD",
        url = "https://github.com/ros-gbp/ros-release/archive/release/indigo/rosunit/1.11.14-0.tar.gz",
        strip_prefix = "ros-release-release-indigo-rosunit-1.11.14-0",
    )

    native.new_http_archive(
        name = "roswtf_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/roswtf.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/roswtf/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-roswtf-1.11.21-0",
    )

    native.new_http_archive(
        name = "std_msgs_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/std_msgs.BUILD",
        url = "https://github.com/ros-gbp/std_msgs-release/archive/release/indigo/std_msgs/0.5.10-0.tar.gz",
        strip_prefix = "std_msgs-release-release-indigo-std_msgs-0.5.10-0",
    )

    native.new_http_archive(
        name = "std_srvs_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/std_srvs.BUILD",
        url = "https://github.com/ros-gbp/ros_comm_msgs-release/archive/release/indigo/std_srvs/1.11.2-0.tar.gz",
        strip_prefix = "ros_comm_msgs-release-release-indigo-std_srvs-1.11.2-0",
    )

    native.new_http_archive(
        name = "topic_tools_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/topic_tools.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/topic_tools/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-topic_tools-1.11.21-0",
    )

    native.new_http_archive(
        name = "xmlrpcpp_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/xmlrpcpp.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/xmlrpcpp/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-xmlrpcpp-1.11.21-0",
    )
