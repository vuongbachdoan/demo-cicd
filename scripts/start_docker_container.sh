#!/bin/bash

# Log in to ECR
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 575108955981.dkr.ecr.us-west-2.amazonaws.com

# Check if the container is already running
if [ $(docker ps -q -f name=cicd-demo) ]; then
    echo "Stopping existing container..."
    docker stop cicd-demo
    echo "Removing existing container..."
    docker rm cicd-demo
fi

# Run the Docker container
docker run -d --name cicd-demo -p 3000:3000 575108955981.dkr.ecr.us-west-2.amazonaws.com/vuongbach/cicd-demo:latest
