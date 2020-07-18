ARG DOCKER_ROS_DISTRO=melodic
FROM ros:${DOCKER_ROS_DISTRO}

RUN apt-get update

RUN apt-get -y install ros-melodic-moveit-*
RUN apt-get -y install ros-melodic-industrial-*
RUN apt-get -y install ros-melodic-ros-control ros-melodic-ros-controllers
RUN apt-get -y install ros-melodic-trac-ik-kinematics-plugin

RUN  apt install -y ros-melodic-joint-state-publisher-gui
RUN  apt install -y ros-melodic-robot-state-publisher
RUN  apt-get install ros-melodic-joint-state-controller
RUN  apt install -y ros-melodic-gazebo-ros-control
RUN  apt-get install -y ros-melodic-ros-controllers

RUN apt install -y python-rosdep2
RUN apt install -y python-rosinstall python-rosinstall-generator python-wstool build-essential
