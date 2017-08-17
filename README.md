# Bazel ROS rules

In the WORKSPACE:

```
local_repository(
    name = "com_github_nicolov_ros_bazel",
    path = "ros_bazel",
)
load("@com_github_nicolov_ros_bazel//:tools/ros_packages.bzl", "ros_packages")
ros_packages()
```

In the root BUILD:

```
load("@com_github_nicolov_ros_bazel//:tools/ros_interop.bzl",
     "generate_setup_bash")

# Will build global ros tools like rostopic, and create bazel-bin/setup.bash to
# add their directories to $PATH.
generate_setup_bash()
```

## Re-generating the workspace definition file

    ./ros2bazel.py
