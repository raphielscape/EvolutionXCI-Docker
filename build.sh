#!/usr/bin/env bash

docker build . -t harukanetwork/evolutionx-ota-ci:latest
docker tag harukanetwork/evolutionx-ota-ci:latest harukanetwork/evolutionx-ota-ci:latest
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push harukanetwork/evolutionx-ota-ci
