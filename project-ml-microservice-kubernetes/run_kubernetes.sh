#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
#docker pull melisa87/udacity_project5:latest

# Step 1:
# This is your Docker ID/path
dockerpath=melisa87/udacity_project5:latest

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl run NAME --image=DOCKER_IMAGE --port=YOUR_PORT
kubectl run udacity_project5 --generator=run-pod/v1 --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
kubectl get pods
sleep 90s

# Step 4:
# Forward the container port to a host
kubectl port-forward udacity_project5 8000:80

kubectl logs udacity_project5

