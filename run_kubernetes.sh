#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
#docker pull melisa87/udacity:v1

# Step 1:
# This is your Docker ID/path
dockerpath=melisa87/udacity:v1

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl run NAME --image=DOCKER_IMAGE --port=YOUR_PORT
kubectl run project5 --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
kubectl get pods
sleep 90s

# Step 4:
# Forward the container port to a host
kubectl port-forward project5 8000:80
#kubectl expose deployment project5 --type=LoadBalancer --port=8000 --target-port=80

