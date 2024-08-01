#!/bin/bash
set -e

# Get the container IDs of all running containers
CONTAINER_IDS=$(docker ps -q)

# Debugging output: Print the container IDs to verify
echo "Container IDs: '$CONTAINER_IDS'"

# Check if there are any running containers
if [ -n "$CONTAINER_IDS" ]; then
  echo "Stopping containers: $CONTAINER_IDS"
  docker stop $CONTAINER_IDS
else
  echo "No running containers found."
fi
