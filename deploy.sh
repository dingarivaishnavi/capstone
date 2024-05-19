#!/bin/bash

echo "$DOCKER_PASS" | docker login -u "$DOCKER_USERNAME" --password-stdin

if [[ $GIT_BRANCH == "origin/main" ]]; then
    docker tag capstone vaishnd/prod
    docker push vaishnd/prod
elif [[ $GIT_BRANCH == "origin/dev" ]]; then
    docker tag capstone vaishnd/dev
    docker push vaishnd/dev
fi
