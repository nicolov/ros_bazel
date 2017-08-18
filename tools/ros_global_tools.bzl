"""
Binaries that should be exported from ROS external workspaces
(i.e. added to $PATH).
"""

ROS_GLOBAL_TOOLS = [
    '@rosbag//:rosbag',
    '@rosbash//:rosrun',
    '@roslaunch//:roslaunch',
    '@rospack//:rospack',
    '@rosservice//:rosservice',
    '@rostopic//:rostopic',
    '@rosmaster//:rosmaster',
]
