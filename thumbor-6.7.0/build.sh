#!/usr/bin/env bash

TAG="flgl/thumbor:6.7.0"

docker build -t "$TAG" .
echo Built docker image with tag $TAG

