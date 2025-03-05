# Introduction
This Docker template used to operate micro-ros using docker compose
# How to use
1. Set the the following Parameter in the .env file
    1. ```ROS_DISTRO=jazzy #Or your ros distro```
    2. ```BAUDRATE=115200 #Or your programmed baud rate```
    3. ```PORT=/dev/ttyUSB0 #where the controller is connected```
2. To run the compose
    ```bash
    ./run_micro_ros_serial.h
    ```
