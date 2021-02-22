#!/usr/bin/env bash

# Build image and add tag
docker build --tag=capstone-$1 .
echo "Tag: capstone-${1}"

# List docker images
docker image ls

# Run flask app
docker run -p 8000:80 capstone-$1
