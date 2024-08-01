#!/bin/bash
set -e

CONTAINER_ID=$(docker ps -q)

echo "Container IDs: $CONTAINER_ID"

docker stop $CONTAINER_ID
