#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

#Build docker image
docker build --tag=demolocal .

#List docker images
docker image ls

# Run flask app
docker run -it demolocal bash
