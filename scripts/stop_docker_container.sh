#!/bin/bash
CONTAINER_ID=$(docker ps -q -f name=my-react-app)
if [ -n "$CONTAINER_ID" ]; then
  docker stop $CONTAINER_ID
  docker rm $CONTAINER_ID
fi
