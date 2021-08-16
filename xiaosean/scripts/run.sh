#!/bin/bash
# If error, exit.
set -e

# Volumes
VOLUMES="-v=/home/$USER/:/data
         -v=/home/../vol/NAS:/data/NAS
         -v=/home/$USER/.ssh/:/home/user/.ssh/"

# Port
PORT="-p 5000:5000 -p 5001:5001 -p 5002:5002 -p 5003:5003 -p 5004:5004 -p 5005:5005"

# GPU
GPU="--gpus all"

# Image
IMAGE="img2ani"

# Display
DIS="-e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix"

# Other args
OTHERSS="--shm-size 120G"

# Command
# xhost +
docker run -it $VOLUMES $PORT $GPU $DIS $OTHERSS $IMAGE
