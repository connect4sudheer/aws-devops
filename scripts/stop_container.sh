#!/bin/sh

set -x

# Stop the container
docker stop simplepythonapp || true

# Delete the container
docker rm simplepythonapp || true



