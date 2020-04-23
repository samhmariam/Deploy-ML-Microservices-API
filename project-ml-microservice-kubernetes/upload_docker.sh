#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<samhmariam/path>
dockerpath=samhmariam/app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag app samhmariam/udacity-microservices-proj:latest

# Step 3:
# Push image to a docker repository
docker push samhmariam/udacity-microservices-proj:latest