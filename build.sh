#!/usr/bin/env bash

function sendTG() {
    curl -s "https://api.telegram.org/bot${TELEGRAM_TOKEN}/sendmessage" --data "text=${*}&chat_id=-1001176435322&parse_mode=Markdown"
}

sendTG "\`Docker image is being pushed!\`"

docker build . -t harukanetwork/evolutionx-ota-ci:latest
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push harukanetwork/evolutionx-ota-ci

sendTG "@RealAkito \`I have pushed new images to docker\` %0A [Images are Here](https://hub.docker.com/r/harukanetwork/evolutionx-ota-ci)"
