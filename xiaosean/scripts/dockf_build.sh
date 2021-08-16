#!/bin/bash
# If error, exit.
set -e

# Image
IMAGE="img2img_cut"

docker build  -t $IMAGE .
