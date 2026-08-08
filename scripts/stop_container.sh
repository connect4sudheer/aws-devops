#!/bin/sh
set -x

# Stop and remove existing container if running
CONTAINER_ID=$(docker ps -q -f name=simplepythonapp)
if [ -n "$CONTAINER_ID" ]; then
    docker stop simplepythonapp
fi

CONTAINER_EXISTS=$(docker ps -a -q -f name=simplepythonapp)
if [ -n "$CONTAINER_EXISTS" ]; then
    docker rm simplepythonapp
fi
