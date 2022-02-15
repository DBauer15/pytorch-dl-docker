#!/bin/bash


docker run \
    --gpus all \
    -it \
    --rm \
    --user `id -u`:`id -g` \
    -w /workspace \
    --expose 6006 \
    "${@:2}" \
    $1:latest
