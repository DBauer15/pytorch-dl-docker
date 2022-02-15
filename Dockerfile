FROM nvcr.io/nvidia/pytorch:22.01-py3

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


CMD ["bash"]
