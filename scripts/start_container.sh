#!/bin/sh

set -x

# Pull docker image
docker pull sudheer1996/simplepythonapp

# Run docker container
docker run -d -p 5000:5000 sudheer1996/simplepythonapp