#!/bin/bash


docker run \
    --gpus all \
    -it \
    --rm \
    --user `id -u`:`id -g` \
    -w /workspace \
    --expose 6006 \
    "$@" \
    $1:latest
