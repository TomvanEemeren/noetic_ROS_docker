# Docker information

## Getting Started

These instructions will cover usage information and for the docker container 

### Installation

#### Prerequisites
Have docker installed, you can confirm this if the following command give an output

```shell
sudo docker -v
```

#### Step-by-step

In the home directory of your Linux terminal execute the following steps

1. Pull the docker image for ROS Noetic
```shell
docker pull osrf/ros:noetic-desktop-full
```
2. Create a directory to store necessary files 
```shell
mkdir docker
```
```shell
cd docker
```
3. Clone the Github files in the new directory
```shell
git clone --single-branch --branch docker https://github.com/Honors-Academy-High-Tech-Systems/Honors-Academy-High-Tech-Systems.git
```
4. Build a new docker image that has some basic tools
```shell
docker build -t noetic_v1 .
```
5. Create an executable to run a docker container
```shell
chmod +x run_noeticImage.sh
```
### Usage

#### Run the container
To run the conatiner with the image just launch the executable from your docker directory
```shell
cd docker
```
```shell
./run_noeticImage.sh
```
Don't forget to source ROS Noetic to use ROS commands since there is no bash to automatically source ROS
```shell
source /opt/ros/noetic/setup.bash
```
Everything inside the data directory of the container will be stored, everything else will be removed after stopping the container
```shell
cd data
```
To enter the same container from another terminal run the following command
```shell
docker exec -it ros_container bash
```
Now you can follow the steps on the husarion website to clone and start the simulation, make sure to build your ROS workspace in the data directory of the docker container. If gazebo doesn't launch properly when launching the simulation, reboot your laptop and try again.

#### Docker commands

Check if docker is installed

```shell
sudo docker -v
```
Check docker images

```shell
docker images
```
Fix permission denied error

```shell
sudo chmod 666 /var/run/docker.sock
```
Remove docker images

```shell
docker rmi <your_image_id>
```
Clean none images

```shell
docker system prune
```
Check current docker container

```shell
docker ps
```
Check docker all containers

```shell
docker ps -a
```
CRemove docker container

```shell
docker rm <your_container_name>
```
Check docker volumes

```shell
docker volume ls
```
Remove docker volume

```shell
docker volume rm <your_volume_name>
```
Run docker image in container with a volume

```shell
docker run -v <your_volume_name>:/data -it --rm <your_image_id>
```
Enter a running docker container

```shell
docker exec -it <your_container_name> bash
```
Save a docker container as an image

```shell
docker commit <your_container_name>
```
Build a dockerfile

```shell
docker build -t <your_image_name> .
```
Exit docker container

```shell
exit
```
#### Other useful commands

Source ros noetic in a docker container

```shell
source /opt/ros/noetic/setup.bash
```
Create an executable

```shell
chmod +x <you_file_name>
```
