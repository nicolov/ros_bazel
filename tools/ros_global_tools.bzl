"""
Binaries that should be exported from ROS external workspaces
(i.e. added to $PATH).
"""

ROS_GLOBAL_TOOLS = [
    '@rosbag_repo//:rosbag',
    '@rosbash_repo//:rosrun',
    '@roslaunch_repo//:roslaunch',
    '@rospack_repo//:rospack',
    '@rosservice_repo//:rosservice',
    '@rostopic_repo//:rostopic',
    '@rosmaster_repo//:rosmaster',
]
