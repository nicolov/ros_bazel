# Bazel ROS rules

```
local_repository(
    name = "com_github_nicolov_ros_bazel",
    path = "ros_bazel",
)
load("@com_github_nicolov_ros_bazel//:tools/ros_packages.bzl", "ros_packages")
ros_packages()
```

## Re-generating the workspace definition file

    ./ros2bazel.py
