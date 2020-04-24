#!/usr/bin/env bash
echo "Building ONLY examples (no OpenDDS rmw or typesupport) for FastRTPS. Not intended to combine with OpenDDS rmw and typesupport."
script=`realpath $0`
script_path=`dirname $script`
pushd $script_path &> /dev/null
pushd .. &> /dev/null

. /opt/ros/eloquent/setup.bash
. install/local_setup.bash
colcon build --cmake-args '-DCMAKE_VERBOSE_MAKEFILE:BOOL=ON' '-DCMAKE_BUILD_TYPE=Debug' --packages-up-to examples_rclcpp_minimal_publisher examples_rclcpp_minimal_subscriber examples_rclcpp_minimal_service examples_rclcpp_minimal_client

popd &> /dev/null
popd &> /dev/null
