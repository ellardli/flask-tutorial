#!/usr/bin/env bash

docker build --no-cache --force-rm -t flask-tutorial:latest -f dockerfiles/Dockerfile.update .

# Cleanup
docker images --quiet --filter=dangling=true | xargs --no-run-if-empty docker rmi