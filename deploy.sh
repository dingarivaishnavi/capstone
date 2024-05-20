#!/bin/bash

DEV_REPO="vaishnd/dev"
PROD_REPO="vaishnd/prod"
IMAGE_NAME="capstone"
DOCKER_USERNAME="vaishnd"
DOCKER_PASSWORD="May@2024."


echo "$DOCKER_PASS" | docker login -u "$DOCKER_USERNAME" --password-stdin

if [[ $GIT_BRANCH == "origin/main" ]]; then
    docker tag capstone vaishnd/prod:latest
    docker push vaishnd/prod:latest
elif [[ $GIT_BRANCH == "origin/dev" ]]; then
    docker tag capstone vaishnd/dev:latest
    docker push vaishnd/dev:latest
fi
