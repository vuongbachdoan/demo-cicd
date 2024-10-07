#!/bin/bash

# Log in to ECR
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 575108955981.dkr.ecr.us-west-2.amazonaws.com

# Kill any process using port 3000
sudo lsof -t -i tcp:3000 | xargs -r kill -9

# Stop the existing Docker container if it's running
docker stop cicd-demo

# Remove the existing Docker container
docker rm cicd-demo

# Run the new Docker container
docker run -d -p 3000:80 --name cicd-demo 575108955981.dkr.ecr.us-west-2.amazonaws.com/vuongbach/cicd-demo:latest
