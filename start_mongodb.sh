#!/bin/bash
set -e

CONTAINER_NAME="mongodb"
IMAGE="public.ecr.aws/docker/library/mongo:latest"

echo "Starting MongoDB container..."

# Remove existing container if any
docker rm -f $CONTAINER_NAME 2>/dev/null || true

# Pull image from public ECR to avoid Docker Hub rate limits
echo "Pulling image $IMAGE..."
docker pull $IMAGE

# Run container
docker run -d \
  --name $CONTAINER_NAME \
  -p 27017:27017 \
  $IMAGE

echo "Waiting for MongoDB to be ready..."
# Simple polling for readiness
MAX_RETRIES=30
COUNT=0
while ! docker exec $CONTAINER_NAME mongosh --eval "db.adminCommand('ping')" >/dev/null 2>&1; do
    if [ $COUNT -ge $MAX_RETRIES ]; then
        echo "MongoDB failed to start in time."
        docker logs $CONTAINER_NAME
        exit 1
    fi
    echo -n "."
    sleep 2
    COUNT=$((COUNT+1))
done

echo -e "\nMongoDB is ready."
