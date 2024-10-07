#!/bin/bash

# Log in to ECR
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 575108955981.dkr.ecr.us-west-2.amazonaws.com

docker stop cicd-demo

docker rm cicd-demo

docker run -d -p 3000:80 --name cicd-demo 575108955981.dkr.ecr.us-west-2.amazonaws.com/vuongbach/cicd-demo:latest

