#!/bin/bash

set -x  # Enable debug mode

# Check if Docker is running
if ! systemctl is-active docker >/dev/null; then
    echo "Docker service is not running."
    exit 1
fi

# Check if the specific container is running
CONTAINER_NAME="cicd-demo" # Replace with your actual container name
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Container $CONTAINER_NAME is running."
    exit 0
else
    echo "Container $CONTAINER_NAME is not running."
    exit 1
fi
