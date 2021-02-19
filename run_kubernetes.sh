#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath=tadhgdowney/helloapp-$1
echo "Dockerpath: ${dockerpath}"

# Run the Docker Hub container with kubernetes
kubectl run helloapp \
    --image=$dockerpath\
    --port=8010 --labels app=helloapp

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward helloapp 8000:8010
