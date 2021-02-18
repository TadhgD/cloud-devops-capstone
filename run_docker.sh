#!/usr/bin/env bash

# Build image and add tag
docker build --tag=helloapp .

# List docker images
docker image ls

# Run flask app
docker run -p 8000:80 helloapp
