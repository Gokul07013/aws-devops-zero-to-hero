#!/bin/bash
set -e

CONTAINER_ID=$(sudo docker ps | awk 'NR>1 {print $1}')

docker stop $CONTAINER_ID
