#!/bin/sh

set -x

# Stop the container
docker stop simplepythonapp

# Delete the container
docker rm simplepythonapp
