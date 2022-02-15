# pytorch-dl-docker
Docker image for GPU accelerated deep learning with PyTorch, TensorBoard, and essential python libraries for image processing


## Build
To build the image run:
```
git clone git@github.com:DBauer15/pytorch-dl-docker.git
cd ./pytorch-dl-docker
docker build -t IMAGE_NAME .
```

## Run
Run an interactive shell using:
```
chmod +x run_docker.sh
./run_docker.sh IMAGE_NAME [DOCKER_ARG1 [DOCKER_ARG2 [...]]
```
