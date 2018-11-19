#!/usr/bin/env bash

# clean up
docker kill group-chat
docker rm group-chat

# build and run
docker build -f docker/Dockerfile . -t group-chat
docker run -d --name group-chat -p 8080:8080 group-chat
