#!/bin/bash

TAG=28.0.0-fpm

sed -i "/FROM nextcloud/c\FROM nextcloud:$TAG" ./Dockerfile

TAG=$TAG docker build -t fabianhk/nextcloud:${TAG} .

docker push fabianhk/nextcloud:${TAG}