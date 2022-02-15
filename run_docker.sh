#!/bin/bash

docker run \
    --gpus all \
    -it \
    --rm \
    --ipc=host \
    --user `id -u`:`id -g` \
    -v `pwd`/training:/workspace/training \
    -v /media/data/mlready:/media/data/mlready \
    -w /workspace/training \
    --expose 6006 \
    -p 6006:6006 \
    "${@:2}" \
    $1
