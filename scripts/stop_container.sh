#!/bin/bash
set -e

echo "Stopping containers."

# Get the container IDs of all running containers
CONTAINER_IDS=$(sudo docker ps -q)

# Debugging output: Print the container IDs to verify
echo "Container IDs: '$CONTAINER_IDS'"

# Check if there are any running containers
if [ -n "$CONTAINER_IDS" ]; then
  echo "Stopping containers: $CONTAINER_IDS"
  sudo docker stop $CONTAINER_IDS
else
  echo "No running containers found."
fi
