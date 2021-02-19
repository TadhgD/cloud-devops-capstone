#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath=tadhgdowney/helloapp-$1
echo "Dockerpath: ${dockerpath}"

# Authenticate & tag
docker login --username "tadhgdowney" &&\ # Replace with global vars stored in circleCI --username DOCKER_ID --password DOCKER_PASS sort of thing
    docker image tag helloapp $dockerpath
echo "Docker ID and Image: $dockerpath"

# Push image to docker repository
docker push $dockerpath
