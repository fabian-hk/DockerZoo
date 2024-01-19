#!/bin/bash

. .env

echo "Building hd-idle container version $HD_IDLE_VERSION"

sed -i "/FROM debian/c\FROM debian:$DEBIAN_TAG" hd-idle/Dockerfile
sed -i "/RUN wget/c\RUN wget https://github.com/adelolmo/hd-idle/releases/download/v${HD_IDLE_VERSION}/hd-idle_${HD_IDLE_VERSION}_amd64.deb" hd-idle/Dockerfile
sed -i "/RUN apt install -y/c\RUN apt install -y ./hd-idle_${HD_IDLE_VERSION}_amd64.deb" hd-idle/Dockerfile

docker build $1 -t fabianhk/hd-idle:${HD_IDLE_VERSION} -f hd-idle/Dockerfile .

docker push fabianhk/hd-idle:${HD_IDLE_VERSION}