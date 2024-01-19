#!/bin/bash

. .env

echo "Building custom Nextcloud container: fabianhk/nextcloud:$NEXTCLOUD_TAG"

sed -i "/FROM nextcloud/c\FROM nextcloud:$NEXTCLOUD_TAG" nextcloud/Dockerfile

docker build -t fabianhk/nextcloud:${NEXTCLOUD_TAG} -f nextcloud/Dockerfile .

docker push fabianhk/nextcloud:${NEXTCLOUD_TAG}