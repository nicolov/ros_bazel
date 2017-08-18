#!/usr/bin/env bash

# Convenience script to get the source for ROS

set -e

PACKAGES="perception robot"
WS_DIR="catkin_ws"

rm -rf $WS_DIR
mkdir $WS_DIR
pushd $WS_DIR

rosinstall_generator \
    --rosdistro indigo \
    --deps \
    --tar \
    --flat \
    $PACKAGES > ws.rosinstall
wstool init -j16 src ws.rosinstall

popd
