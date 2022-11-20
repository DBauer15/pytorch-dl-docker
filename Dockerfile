FROM nvcr.io/nvidia/pytorch:22.10-py3
ARG ARG_TCNN_CUDA_ARCHITECTURES
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Moscow

RUN apt-get update && apt-get install -y \
    sudo \
    git \
    python3-openimageio

COPY ./requirements.txt /workspace/requirements.txt
RUN pip3 install --upgrade pip
RUN pip3 install -r /workspace/requirements.txt

ENV PYTHONPATH=/usr/lib/python3/dist-packages
ENV HOME=/workspace

RUN python3 -c "import torch; print(torch.cuda.is_available())"

#Install tiny-cuda-nn pytorch bindings
RUN echo $ARG_TCNN_CUDA_ARCHITECTURES
ENV TCNN_CUDA_ARCHITECTURES=${ARG_TCNN_CUDA_ARCHITECTURES:-unknown}
RUN pip3 install git+https://github.com/NVlabs/tiny-cuda-nn/#subdirectory=bindings/torch


CMD ["bash"]
