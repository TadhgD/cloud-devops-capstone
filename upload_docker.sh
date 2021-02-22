#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath=tadhgdowney/capstone-$1
echo "Dockerpath: ${dockerpath}"

# Authenticate & tag
docker login --username "tadhgdowney" && \
    docker image tag capstone-$1 $dockerpath
echo "Docker ID and Image: $dockerpath"

# Push image to docker repository
docker push $dockerpath
