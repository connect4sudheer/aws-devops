#!/bin/sh
set -x

# 1. Force pull the latest image from Docker Hub
docker pull sudheer1996/simplepythonapp:latest

# 2. Safety check: Remove existing container if stop_container skipped it
docker stop simplepythonapp 2>/dev/null || true
docker rm simplepythonapp 2>/dev/null || true

# 3. Clean up old untagged/dangling images to free disk space
docker image prune -f

# 4. Run the new container
docker run -d --name simplepythonapp -p 5000:5000 sudheer1996/simplepythonapp:latest