#!/usr/bin/env bash

TAG="flgl/rails:5.2.2"

docker build -t "$TAG" .
echo Built docker image with tag $TAG

