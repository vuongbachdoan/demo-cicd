#!/bin/bash
if curl -s http://localhost | grep -q 'React App'; then
  echo "Deployment succeeded!"
else
  echo "Deployment failed!"
  exit 1
fi
