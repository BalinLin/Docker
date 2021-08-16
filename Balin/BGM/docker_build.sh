#!/bin/bash
# If error, exit.
set -e

# Image
IMAGE="bgmv2"

docker build  -t $IMAGE .
