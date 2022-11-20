#!/bin/bash

docker build --build-arg ARG_TCNN_CUDA_ARCHITECTURES=$(./get_compute_architectures.sh) -t pytorch-dl-docker .
