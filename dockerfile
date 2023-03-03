FROM osrf/ros:noetic-desktop-full
COPY . .
RUN apt-get update -yq && echo "update DONE"
RUN apt-get install pip -yq \
&& apt-get install git -yq \
&& apt-get install ros-noetic-teleop-twist-keyboard -yq
RUN pip3 install -U catkin_tools
VOLUME /data
CMD /bin/bash
