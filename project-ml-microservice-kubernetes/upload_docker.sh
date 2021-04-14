#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=melisa87/udacity_project5

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag 73fc7e971ed9 melisa87/udacity_project5:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest
