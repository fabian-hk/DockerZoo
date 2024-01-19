#!/bin/bash

. .env

echo "Building btrbk-server container: fabianhk/debian:$DEBIAN_TAG"

sed -i "/FROM debian/c\FROM debian:$DEBIAN_TAG" btrbk-server/Dockerfile

docker run --privileged --rm tonistiigi/binfmt --install all

docker buildx build --push --platform linux/amd64 -t fabianhk/btrbk-server:amd64-${DEBIAN_TAG} -f btrbk-server/Dockerfile .
docker buildx build --push --platform linux/arm64 -t fabianhk/btrbk-server:arm64-${DEBIAN_TAG} -f btrbk-server/Dockerfile .


docker manifest rm fabianhk/btrbk-server:${DEBIAN_TAG}
docker manifest create fabianhk/btrbk-server:${DEBIAN_TAG} fabianhk/btrbk-server:amd64-${DEBIAN_TAG} fabianhk/btrbk-server:arm64-${DEBIAN_TAG}
docker manifest push fabianhk/btrbk-server:${DEBIAN_TAG}