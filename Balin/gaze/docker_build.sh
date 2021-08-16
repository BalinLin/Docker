#!/bin/bash
# If error, exit.
set -e

# Image
IMAGE="gaze"

docker build -t $IMAGE .
