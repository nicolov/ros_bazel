def ros_packages():
    native.new_http_archive(
        name = "actionlib_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/actionlib.BUILD",
        url = "https://github.com/ros-gbp/actionlib-release/archive/release/indigo/actionlib/1.11.9-0.tar.gz",
        strip_prefix = "actionlib-release-release-indigo-actionlib-1.11.9-0",
    )

    native.new_http_archive(
        name = "actionlib_msgs_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/actionlib_msgs.BUILD",
        url = "https://github.com/ros-gbp/common_msgs-release/archive/release/indigo/actionlib_msgs/1.11.9-0.tar.gz",
        strip_prefix = "common_msgs-release-release-indigo-actionlib_msgs-1.11.9-0",
    )

    native.new_http_archive(
        name = "angles_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/angles.BUILD",
        url = "https://github.com/ros-gbp/geometry_angles_utils-release/archive/release/indigo/angles/1.9.11-0.tar.gz",
        strip_prefix = "geometry_angles_utils-release-release-indigo-angles-1.9.11-0",
    )

    native.new_http_archive(
        name = "bond_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/bond.BUILD",
        url = "https://github.com/ros-gbp/bond_core-release/archive/release/indigo/bond/1.7.19-0.tar.gz",
        strip_prefix = "bond_core-release-release-indigo-bond-1.7.19-0",
    )

    native.new_http_archive(
        name = "bond_core_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/bond_core.BUILD",
        url = "https://github.com/ros-gbp/bond_core-release/archive/release/indigo/bond_core/1.7.19-0.tar.gz",
        strip_prefix = "bond_core-release-release-indigo-bond_core-1.7.19-0",
    )

    native.new_http_archive(
        name = "bondcpp_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/bondcpp.BUILD",
        url = "https://github.com/ros-gbp/bond_core-release/archive/release/indigo/bondcpp/1.7.19-0.tar.gz",
        strip_prefix = "bond_core-release-release-indigo-bondcpp-1.7.19-0",
    )

    native.new_http_archive(
        name = "bondpy_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/bondpy.BUILD",
        url = "https://github.com/ros-gbp/bond_core-release/archive/release/indigo/bondpy/1.7.19-0.tar.gz",
        strip_prefix = "bond_core-release-release-indigo-bondpy-1.7.19-0",
    )

    native.new_http_archive(
        name = "catkin_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/catkin.BUILD",
        url = "https://github.com/ros-gbp/catkin-release/archive/release/indigo/catkin/0.6.19-0.tar.gz",
        strip_prefix = "catkin-release-release-indigo-catkin-0.6.19-0",
    )

    native.new_http_archive(
        name = "class_loader_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/class_loader.BUILD",
        url = "https://github.com/ros-gbp/class_loader-release/archive/release/indigo/class_loader/0.3.6-0.tar.gz",
        strip_prefix = "class_loader-release-release-indigo-class_loader-0.3.6-0",
    )

    native.new_http_archive(
        name = "cmake_modules_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/cmake_modules.BUILD",
        url = "https://github.com/ros-gbp/cmake_modules-release/archive/release/indigo/cmake_modules/0.3.3-0.tar.gz",
        strip_prefix = "cmake_modules-release-release-indigo-cmake_modules-0.3.3-0",
    )

    native.new_http_archive(
        name = "collada_parser_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/collada_parser.BUILD",
        url = "https://github.com/ros-gbp/collada_urdf-release/archive/release/indigo/collada_parser/1.11.14-0.tar.gz",
        strip_prefix = "collada_urdf-release-release-indigo-collada_parser-1.11.14-0",
    )

    native.new_http_archive(
        name = "collada_urdf_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/collada_urdf.BUILD",
        url = "https://github.com/ros-gbp/collada_urdf-release/archive/release/indigo/collada_urdf/1.11.14-0.tar.gz",
        strip_prefix = "collada_urdf-release-release-indigo-collada_urdf-1.11.14-0",
    )

    native.new_http_archive(
        name = "common_msgs_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/common_msgs.BUILD",
        url = "https://github.com/ros-gbp/common_msgs-release/archive/release/indigo/common_msgs/1.11.9-0.tar.gz",
        strip_prefix = "common_msgs-release-release-indigo-common_msgs-1.11.9-0",
    )

    native.new_http_archive(
        name = "control_msgs_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/control_msgs.BUILD",
        url = "https://github.com/ros-gbp/control_msgs-release/archive/release/indigo/control_msgs/1.3.1-0.tar.gz",
        strip_prefix = "control_msgs-release-release-indigo-control_msgs-1.3.1-0",
    )

    native.new_http_archive(
        name = "cpp_common_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/cpp_common.BUILD",
        url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/indigo/cpp_common/0.5.8-0.tar.gz",
        strip_prefix = "roscpp_core-release-release-indigo-cpp_common-0.5.8-0",
    )

    native.new_http_archive(
        name = "diagnostic_aggregator_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/diagnostic_aggregator.BUILD",
        url = "https://github.com/ros-gbp/diagnostics-release/archive/release/indigo/diagnostic_aggregator/1.9.2-0.tar.gz",
        strip_prefix = "diagnostics-release-release-indigo-diagnostic_aggregator-1.9.2-0",
    )

    native.new_http_archive(
        name = "diagnostic_analysis_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/diagnostic_analysis.BUILD",
        url = "https://github.com/ros-gbp/diagnostics-release/archive/release/indigo/diagnostic_analysis/1.9.2-0.tar.gz",
        strip_prefix = "diagnostics-release-release-indigo-diagnostic_analysis-1.9.2-0",
    )

    native.new_http_archive(
        name = "diagnostic_common_diagnostics_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/diagnostic_common_diagnostics.BUILD",
        url = "https://github.com/ros-gbp/diagnostics-release/archive/release/indigo/diagnostic_common_diagnostics/1.9.2-0.tar.gz",
        strip_prefix = "diagnostics-release-release-indigo-diagnostic_common_diagnostics-1.9.2-0",
    )

    native.new_http_archive(
        name = "diagnostic_msgs_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/diagnostic_msgs.BUILD",
        url = "https://github.com/ros-gbp/common_msgs-release/archive/release/indigo/diagnostic_msgs/1.11.9-0.tar.gz",
        strip_prefix = "common_msgs-release-release-indigo-diagnostic_msgs-1.11.9-0",
    )

    native.new_http_archive(
        name = "diagnostic_updater_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/diagnostic_updater.BUILD",
        url = "https://github.com/ros-gbp/diagnostics-release/archive/release/indigo/diagnostic_updater/1.9.2-0.tar.gz",
        strip_prefix = "diagnostics-release-release-indigo-diagnostic_updater-1.9.2-0",
    )

    native.new_http_archive(
        name = "diagnostics_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/diagnostics.BUILD",
        url = "https://github.com/ros-gbp/diagnostics-release/archive/release/indigo/diagnostics/1.9.2-0.tar.gz",
        strip_prefix = "diagnostics-release-release-indigo-diagnostics-1.9.2-0",
    )

    native.new_http_archive(
        name = "dynamic_reconfigure_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/dynamic_reconfigure.BUILD",
        url = "https://github.com/ros-gbp/dynamic_reconfigure-release/archive/release/indigo/dynamic_reconfigure/1.5.48-0.tar.gz",
        strip_prefix = "dynamic_reconfigure-release-release-indigo-dynamic_reconfigure-1.5.48-0",
    )

    native.new_http_archive(
        name = "eigen_conversions_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/eigen_conversions.BUILD",
        url = "https://github.com/ros-gbp/geometry-release/archive/release/indigo/eigen_conversions/1.11.9-0.tar.gz",
        strip_prefix = "geometry-release-release-indigo-eigen_conversions-1.11.9-0",
    )

    native.new_http_archive(
        name = "eigen_stl_containers_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/eigen_stl_containers.BUILD",
        url = "https://github.com/ros-gbp/eigen_stl_containers-release/archive/release/indigo/eigen_stl_containers/0.1.8-0.tar.gz",
        strip_prefix = "eigen_stl_containers-release-release-indigo-eigen_stl_containers-0.1.8-0",
    )

    native.new_http_archive(
        name = "executive_smach_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/executive_smach.BUILD",
        url = "https://github.com/ros-gbp/executive_smach-release/archive/release/indigo/executive_smach/2.0.1-0.tar.gz",
        strip_prefix = "executive_smach-release-release-indigo-executive_smach-2.0.1-0",
    )

    native.new_http_archive(
        name = "filters_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/filters.BUILD",
        url = "https://github.com/ros-gbp/filters-release/archive/release/indigo/filters/1.7.5-0.tar.gz",
        strip_prefix = "filters-release-release-indigo-filters-1.7.5-0",
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
        name = "geometric_shapes_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/geometric_shapes.BUILD",
        url = "https://github.com/ros-gbp/geometric_shapes-release/archive/release/indigo/geometric_shapes/0.4.5-0.tar.gz",
        strip_prefix = "geometric_shapes-release-release-indigo-geometric_shapes-0.4.5-0",
    )

    native.new_http_archive(
        name = "geometry_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/geometry.BUILD",
        url = "https://github.com/ros-gbp/geometry-release/archive/release/indigo/geometry/1.11.9-0.tar.gz",
        strip_prefix = "geometry-release-release-indigo-geometry-1.11.9-0",
    )

    native.new_http_archive(
        name = "geometry_msgs_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/geometry_msgs.BUILD",
        url = "https://github.com/ros-gbp/common_msgs-release/archive/release/indigo/geometry_msgs/1.11.9-0.tar.gz",
        strip_prefix = "common_msgs-release-release-indigo-geometry_msgs-1.11.9-0",
    )

    native.new_http_archive(
        name = "joint_state_publisher_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/joint_state_publisher.BUILD",
        url = "https://github.com/ros-gbp/robot_model-release/archive/release/indigo/joint_state_publisher/1.11.14-0.tar.gz",
        strip_prefix = "robot_model-release-release-indigo-joint_state_publisher-1.11.14-0",
    )

    native.new_http_archive(
        name = "kdl_conversions_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/kdl_conversions.BUILD",
        url = "https://github.com/ros-gbp/geometry-release/archive/release/indigo/kdl_conversions/1.11.9-0.tar.gz",
        strip_prefix = "geometry-release-release-indigo-kdl_conversions-1.11.9-0",
    )

    native.new_http_archive(
        name = "kdl_parser_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/kdl_parser.BUILD",
        url = "https://github.com/ros-gbp/kdl_parser-release/archive/release/indigo/kdl_parser/1.11.14-0.tar.gz",
        strip_prefix = "kdl_parser-release-release-indigo-kdl_parser-1.11.14-0",
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
        name = "nav_msgs_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/nav_msgs.BUILD",
        url = "https://github.com/ros-gbp/common_msgs-release/archive/release/indigo/nav_msgs/1.11.9-0.tar.gz",
        strip_prefix = "common_msgs-release-release-indigo-nav_msgs-1.11.9-0",
    )

    native.new_http_archive(
        name = "nodelet_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/nodelet.BUILD",
        url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/indigo/nodelet/1.9.10-0.tar.gz",
        strip_prefix = "nodelet_core-release-release-indigo-nodelet-1.9.10-0",
    )

    native.new_http_archive(
        name = "nodelet_core_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/nodelet_core.BUILD",
        url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/indigo/nodelet_core/1.9.10-0.tar.gz",
        strip_prefix = "nodelet_core-release-release-indigo-nodelet_core-1.9.10-0",
    )

    native.new_http_archive(
        name = "nodelet_topic_tools_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/nodelet_topic_tools.BUILD",
        url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/indigo/nodelet_topic_tools/1.9.10-0.tar.gz",
        strip_prefix = "nodelet_core-release-release-indigo-nodelet_topic_tools-1.9.10-0",
    )

    native.new_http_archive(
        name = "octomap_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/octomap.BUILD",
        url = "https://github.com/ros-gbp/octomap-release/archive/release/indigo/octomap/1.6.9-0.tar.gz",
        strip_prefix = "octomap-release-release-indigo-octomap-1.6.9-0",
    )

    native.new_http_archive(
        name = "orocos_kdl_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/orocos_kdl.BUILD",
        url = "https://github.com/smits/orocos-kdl-release/archive/release/indigo/orocos_kdl/1.3.1-0.tar.gz",
        strip_prefix = "orocos-kdl-release-release-indigo-orocos_kdl-1.3.1-0",
    )

    native.new_http_archive(
        name = "pluginlib_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/pluginlib.BUILD",
        url = "https://github.com/ros-gbp/pluginlib-release/archive/release/indigo/pluginlib/1.10.5-0.tar.gz",
        strip_prefix = "pluginlib-release-release-indigo-pluginlib-1.10.5-0",
    )

    native.new_http_archive(
        name = "python_orocos_kdl_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/python_orocos_kdl.BUILD",
        url = "https://github.com/smits/orocos-kdl-release/archive/release/indigo/python_orocos_kdl/1.3.1-0.tar.gz",
        strip_prefix = "orocos-kdl-release-release-indigo-python_orocos_kdl-1.3.1-0",
    )

    native.new_http_archive(
        name = "random_numbers_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/random_numbers.BUILD",
        url = "https://github.com/ros-gbp/random_numbers-release/archive/release/indigo/random_numbers/0.3.0-0.tar.gz",
        strip_prefix = "random_numbers-release-release-indigo-random_numbers-0.3.0-0",
    )

    native.new_http_archive(
        name = "resource_retriever_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/resource_retriever.BUILD",
        url = "https://github.com/ros-gbp/resource_retriever-release/archive/release/indigo/resource_retriever/1.11.8-0.tar.gz",
        strip_prefix = "resource_retriever-release-release-indigo-resource_retriever-1.11.8-0",
    )

    native.new_http_archive(
        name = "robot_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/robot.BUILD",
        url = "https://github.com/ros-gbp/metapackages-release/archive/release/indigo/robot/1.1.5-0.tar.gz",
        strip_prefix = "metapackages-release-release-indigo-robot-1.1.5-0",
    )

    native.new_http_archive(
        name = "robot_model_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/robot_model.BUILD",
        url = "https://github.com/ros-gbp/robot_model-release/archive/release/indigo/robot_model/1.11.14-0.tar.gz",
        strip_prefix = "robot_model-release-release-indigo-robot_model-1.11.14-0",
    )

    native.new_http_archive(
        name = "robot_state_publisher_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/robot_state_publisher.BUILD",
        url = "https://github.com/ros-gbp/robot_state_publisher-release/archive/release/indigo/robot_state_publisher/1.11.2-0.tar.gz",
        strip_prefix = "robot_state_publisher-release-release-indigo-robot_state_publisher-1.11.2-0",
    )

    native.new_http_archive(
        name = "ros_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/ros.BUILD",
        url = "https://github.com/ros-gbp/ros-release/archive/release/indigo/ros/1.11.14-0.tar.gz",
        strip_prefix = "ros-release-release-indigo-ros-1.11.14-0",
    )

    native.new_http_archive(
        name = "ros_base_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/ros_base.BUILD",
        url = "https://github.com/ros-gbp/metapackages-release/archive/release/indigo/ros_base/1.1.5-0.tar.gz",
        strip_prefix = "metapackages-release-release-indigo-ros_base-1.1.5-0",
    )

    native.new_http_archive(
        name = "ros_comm_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/ros_comm.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/ros_comm/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-ros_comm-1.11.21-0",
    )

    native.new_http_archive(
        name = "ros_core_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/ros_core.BUILD",
        url = "https://github.com/ros-gbp/metapackages-release/archive/release/indigo/ros_core/1.1.5-0.tar.gz",
        strip_prefix = "metapackages-release-release-indigo-ros_core-1.1.5-0",
    )

    native.new_http_archive(
        name = "rosbag_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosbag.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/rosbag/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-rosbag-1.11.21-0",
    )

    native.new_http_archive(
        name = "rosbag_migration_rule_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosbag_migration_rule.BUILD",
        url = "https://github.com/ros-gbp/rosbag_migration_rule-release/archive/release/indigo/rosbag_migration_rule/1.0.0-0.tar.gz",
        strip_prefix = "rosbag_migration_rule-release-release-indigo-rosbag_migration_rule-1.0.0-0",
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
        name = "rosconsole_bridge_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/rosconsole_bridge.BUILD",
        url = "https://github.com/ros-gbp/rosconsole_bridge-release/archive/release/indigo/rosconsole_bridge/0.4.4-0.tar.gz",
        strip_prefix = "rosconsole_bridge-release-release-indigo-rosconsole_bridge-0.4.4-0",
    )

    native.new_http_archive(
        name = "roscpp_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/roscpp.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/roscpp/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-roscpp-1.11.21-0",
    )

    native.new_http_archive(
        name = "roscpp_core_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/roscpp_core.BUILD",
        url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/indigo/roscpp_core/0.5.8-0.tar.gz",
        strip_prefix = "roscpp_core-release-release-indigo-roscpp_core-0.5.8-0",
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
        name = "roslint_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/roslint.BUILD",
        url = "https://github.com/ros-gbp/roslint-release/archive/release/indigo/roslint/0.10.0-0.tar.gz",
        strip_prefix = "roslint-release-release-indigo-roslint-0.10.0-0",
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
        name = "self_test_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/self_test.BUILD",
        url = "https://github.com/ros-gbp/diagnostics-release/archive/release/indigo/self_test/1.9.2-0.tar.gz",
        strip_prefix = "diagnostics-release-release-indigo-self_test-1.9.2-0",
    )

    native.new_http_archive(
        name = "sensor_msgs_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/sensor_msgs.BUILD",
        url = "https://github.com/ros-gbp/common_msgs-release/archive/release/indigo/sensor_msgs/1.11.9-0.tar.gz",
        strip_prefix = "common_msgs-release-release-indigo-sensor_msgs-1.11.9-0",
    )

    native.new_http_archive(
        name = "shape_msgs_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/shape_msgs.BUILD",
        url = "https://github.com/ros-gbp/common_msgs-release/archive/release/indigo/shape_msgs/1.11.9-0.tar.gz",
        strip_prefix = "common_msgs-release-release-indigo-shape_msgs-1.11.9-0",
    )

    native.new_http_archive(
        name = "smach_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/smach.BUILD",
        url = "https://github.com/ros-gbp/executive_smach-release/archive/release/indigo/smach/2.0.1-0.tar.gz",
        strip_prefix = "executive_smach-release-release-indigo-smach-2.0.1-0",
    )

    native.new_http_archive(
        name = "smach_msgs_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/smach_msgs.BUILD",
        url = "https://github.com/ros-gbp/executive_smach-release/archive/release/indigo/smach_msgs/2.0.1-0.tar.gz",
        strip_prefix = "executive_smach-release-release-indigo-smach_msgs-2.0.1-0",
    )

    native.new_http_archive(
        name = "smach_ros_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/smach_ros.BUILD",
        url = "https://github.com/ros-gbp/executive_smach-release/archive/release/indigo/smach_ros/2.0.1-0.tar.gz",
        strip_prefix = "executive_smach-release-release-indigo-smach_ros-2.0.1-0",
    )

    native.new_http_archive(
        name = "smclib_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/smclib.BUILD",
        url = "https://github.com/ros-gbp/bond_core-release/archive/release/indigo/smclib/1.7.19-0.tar.gz",
        strip_prefix = "bond_core-release-release-indigo-smclib-1.7.19-0",
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
        name = "stereo_msgs_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/stereo_msgs.BUILD",
        url = "https://github.com/ros-gbp/common_msgs-release/archive/release/indigo/stereo_msgs/1.11.9-0.tar.gz",
        strip_prefix = "common_msgs-release-release-indigo-stereo_msgs-1.11.9-0",
    )

    native.new_http_archive(
        name = "tf_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/tf.BUILD",
        url = "https://github.com/ros-gbp/geometry-release/archive/release/indigo/tf/1.11.9-0.tar.gz",
        strip_prefix = "geometry-release-release-indigo-tf-1.11.9-0",
    )

    native.new_http_archive(
        name = "tf2_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/tf2.BUILD",
        url = "https://github.com/ros-gbp/geometry2-release/archive/release/indigo/tf2/0.5.16-0.tar.gz",
        strip_prefix = "geometry2-release-release-indigo-tf2-0.5.16-0",
    )

    native.new_http_archive(
        name = "tf2_kdl_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/tf2_kdl.BUILD",
        url = "https://github.com/ros-gbp/geometry2-release/archive/release/indigo/tf2_kdl/0.5.16-0.tar.gz",
        strip_prefix = "geometry2-release-release-indigo-tf2_kdl-0.5.16-0",
    )

    native.new_http_archive(
        name = "tf2_msgs_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/tf2_msgs.BUILD",
        url = "https://github.com/ros-gbp/geometry2-release/archive/release/indigo/tf2_msgs/0.5.16-0.tar.gz",
        strip_prefix = "geometry2-release-release-indigo-tf2_msgs-0.5.16-0",
    )

    native.new_http_archive(
        name = "tf2_py_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/tf2_py.BUILD",
        url = "https://github.com/ros-gbp/geometry2-release/archive/release/indigo/tf2_py/0.5.16-0.tar.gz",
        strip_prefix = "geometry2-release-release-indigo-tf2_py-0.5.16-0",
    )

    native.new_http_archive(
        name = "tf2_ros_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/tf2_ros.BUILD",
        url = "https://github.com/ros-gbp/geometry2-release/archive/release/indigo/tf2_ros/0.5.16-0.tar.gz",
        strip_prefix = "geometry2-release-release-indigo-tf2_ros-0.5.16-0",
    )

    native.new_http_archive(
        name = "tf_conversions_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/tf_conversions.BUILD",
        url = "https://github.com/ros-gbp/geometry-release/archive/release/indigo/tf_conversions/1.11.9-0.tar.gz",
        strip_prefix = "geometry-release-release-indigo-tf_conversions-1.11.9-0",
    )

    native.new_http_archive(
        name = "topic_tools_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/topic_tools.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/topic_tools/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-topic_tools-1.11.21-0",
    )

    native.new_http_archive(
        name = "trajectory_msgs_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/trajectory_msgs.BUILD",
        url = "https://github.com/ros-gbp/common_msgs-release/archive/release/indigo/trajectory_msgs/1.11.9-0.tar.gz",
        strip_prefix = "common_msgs-release-release-indigo-trajectory_msgs-1.11.9-0",
    )

    native.new_http_archive(
        name = "urdf_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/urdf.BUILD",
        url = "https://github.com/ros-gbp/robot_model-release/archive/release/indigo/urdf/1.11.14-0.tar.gz",
        strip_prefix = "robot_model-release-release-indigo-urdf-1.11.14-0",
    )

    native.new_http_archive(
        name = "urdf_parser_plugin_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/urdf_parser_plugin.BUILD",
        url = "https://github.com/ros-gbp/robot_model-release/archive/release/indigo/urdf_parser_plugin/1.11.14-0.tar.gz",
        strip_prefix = "robot_model-release-release-indigo-urdf_parser_plugin-1.11.14-0",
    )

    native.new_http_archive(
        name = "visualization_msgs_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/visualization_msgs.BUILD",
        url = "https://github.com/ros-gbp/common_msgs-release/archive/release/indigo/visualization_msgs/1.11.9-0.tar.gz",
        strip_prefix = "common_msgs-release-release-indigo-visualization_msgs-1.11.9-0",
    )

    native.new_http_archive(
        name = "xacro_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/xacro.BUILD",
        url = "https://github.com/ros-gbp/xacro-release/archive/release/indigo/xacro/1.9.5-0.tar.gz",
        strip_prefix = "xacro-release-release-indigo-xacro-1.9.5-0",
    )

    native.new_http_archive(
        name = "xmlrpcpp_repo",
        build_file = "@com_github_nicolov_ros_bazel//:packages/xmlrpcpp.BUILD",
        url = "https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/xmlrpcpp/1.11.21-0.tar.gz",
        strip_prefix = "ros_comm-release-release-indigo-xmlrpcpp-1.11.21-0",
    )
