#!/bin/bash
set -e

# Stop the running container (if any)
CONTAINER_ID=docker ps | awk 'NR>1 {print $1}'

docker stop $CONTAINER_ID
