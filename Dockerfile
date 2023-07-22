FROM nvcr.io/nvidia/cuda:11.8.0-cudnn8-devel-ubuntu20.04
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    curl \
    git \
    git-lfs \
    python3-pip \
    python3-dev \
    unzip

RUN python3 -m pip install --upgrade pip pyarrow setuptools

WORKDIR /workspace
RUN git clone https://github.com/vllm-project/vllm.git
WORKDIR /workspace/vllm
RUN pip install -r requirements-dev.txt
RUN pip install install -e .