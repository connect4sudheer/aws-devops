#!/bin/sh
set -x

# 1. Stop and remove existing container
docker stop simplepythonapp 2>/dev/null || true
docker rm simplepythonapp 2>/dev/null || true

# 2. Force remove the old local image so Docker cannot use cached layers
docker rmi sudheer1996/simplepythonapp:latest 2>/dev/null || true

# 3. Pull fresh image from Docker Hub
docker pull sudheer1996/simplepythonapp:latest

# 4. Run the new container
docker run -d --name simplepythonapp -p 5000:5000 sudheer1996/simplepythonapp:latest