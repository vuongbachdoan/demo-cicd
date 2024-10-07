#!/bin/bash

set -x  # Enable debug mode

# Check if Docker is running
if ! systemctl is-active docker >/dev/null; then
    echo "Docker service is not running."
    exit 0
fi