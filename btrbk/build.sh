#!/bin/bash

. .env

echo "Building btrbk container: fabianhk/btrbk:$BTRBK_VERSION"

sed -i "/FROM debian/c\FROM debian:$DEBIAN_TAG" btrbk/Dockerfile

sed -i "/RUN wget/c\RUN wget https://raw.githubusercontent.com/digint/btrbk/v${BTRBK_VERSION}/btrbk" btrbk/Dockerfile

docker build -t fabianhk/btrbk:${BTRBK_VERSION} -f btrbk/Dockerfile .

docker push fabianhk/btrbk:${BTRBK_VERSION}