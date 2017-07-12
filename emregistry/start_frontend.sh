#!/bin/bash

docker run \
  -d \
  -e ENV_DOCKER_REGISTRY_HOST=192.168.240.29 \
  -e ENV_DOCKER_REGISTRY_PORT=5000 \
  -p 80:80 \
  emregistry.com/konradkleine/docker-registry-frontend:v2

