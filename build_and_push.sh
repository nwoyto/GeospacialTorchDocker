#!/bin/bash
set -e

IMAGE_NAME="pytorch-geospatial-gpu"
TAG="latest"
DOCKERHUB_USER="yourdockerhubusername"  # <-- Change this to your DockerHub username

# Build the Docker image

echo "Building $IMAGE_NAME:$TAG ..."
docker build -t $IMAGE_NAME:$TAG .

echo "Tagging for DockerHub..."
docker tag $IMAGE_NAME:$TAG $DOCKERHUB_USER/$IMAGE_NAME:$TAG

echo "Pushing to DockerHub..."
docker push $DOCKERHUB_USER/$IMAGE_NAME:$TAG

echo "Done."
