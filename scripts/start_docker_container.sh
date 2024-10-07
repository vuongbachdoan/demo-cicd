#!/bin/bash

# Log in to ECR
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 575108955981.dkr.ecr.us-west-2.amazonaws.com

# Pull the Docker image
docker pull 575108955981.dkr.ecr.us-west-2.amazonaws.com/vuongbach/cicd-demo:latest

# Run the Docker container (adjust as needed)
docker run -d --name cicd-demo -p 3000:3000 575108955981.dkr.ecr.us-west-2.amazonaws.com/vuongbach/cicd-demo:latest

