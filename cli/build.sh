#!/usr/bin/env bash

docker build --no-cache --pull --force-rm -t flask-tutorial:latest -f dockerfiles/Dockerfile .
docker tag flask-tutorial:latest flask-tutorial:base