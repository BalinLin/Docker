#!/bin/bash
# If error, exit.
set -e

# Image name
IMAGE="detr3d"

docker build  -t $IMAGE .
