#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="samhmariam/udacity-microservices-proj"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run microproj\
    --image=$dockerpath\
    --port=80 --labels app=microproj

# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
kubectl port-forward microproj 8000:80

