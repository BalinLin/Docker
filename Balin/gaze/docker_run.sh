#!/bin/bash
# If error, exit.
set -e

# Volumes
VOLUMES="-v=/home/$USER/.ssh/:/home/user/.ssh/
         -v=/home/$USER/exper/gaze/:/gaze/"

# Port
PORT="-p 8701:22"

# GPU
GPU="--gpus all"

# Display
DIS="-e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix"

# Other args
OTHERS="--shm-size 120G"

# Image
IMAGE="gaze"

# Command
# xhost +
docker run -it $VOLUMES $PORT $GPU $DIS $OTHERS $IMAGE
# docker run -it $VOLUMES $PORT $GPU $OTHERS $IMAGE
