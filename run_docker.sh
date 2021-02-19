#!/usr/bin/env bash

# Build image and add tag
docker build --tag=helloapp-$1 .
echo "Tag: helloapp-${1}"

# List docker images
docker image ls

# Run flask app
docker run -p 8000:8010 helloapp-$1
