#!/bin/bash
set -e

CONTAINER_ID=$(docker ps -q)

docker stop $CONTAINER_ID
