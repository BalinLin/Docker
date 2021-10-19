#!/bin/bash
# If error, exit.
set -e

# Name
NAME="--name balin"

# Volumes
VOLUMES="-v=/home/$USER/.ssh/:/home/user/.ssh/
         -v=/home/$USER/exper/:/exper/"

# Port
PORT="-p 8701:22 -p 6006:6006"

# GPU
GPU="--gpus all"

# Display
DIS="-e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix"

# Other args
OTHERS="--shm-size 120G"

# Image
IMAGE="gaze"
IMAGE="balinlin/gaze:1.0.0"


# Command
# xhost +
docker run -it $NAME $VOLUMES $PORT $GPU $DIS $OTHERS $IMAGE
# docker run -it $VOLUMES $PORT $GPU $OTHERS $IMAGE
