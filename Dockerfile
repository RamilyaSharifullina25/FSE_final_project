ARG UBUNTU_VER=16.04
ARG CONDA_VER=latest
ARG OS_TYPE=x86_64
ARG PY_VER=3.7

FROM ubuntu:${UBUNTU_VER}

# System packages 
RUN apt-get update && apt-get install -yq curl wget jq vim

ARG CONDA_VER
ARG OS_TYPE
# Install miniconda to /miniconda
RUN curl -LO "http://repo.continuum.io/miniconda/Miniconda3-${CONDA_VER}-Linux-${OS_TYPE}.sh"
RUN bash Miniconda3-${CONDA_VER}-Linux-${OS_TYPE}.sh -p /miniconda -b
RUN rm Miniconda3-${CONDA_VER}-Linux-${OS_TYPE}.sh
ENV PATH=/miniconda/bin:${PATH}
RUN conda update -y conda

# Create working directory
RUN mkdir visloc_apr 
WORKDIR /visloc_apr/

# Install all dependencies
RUN conda install python=3.7
RUN conda install pytorch==1.0.1 torchvision==0.2.2 cudatoolkit=9.0 -c pytorch
RUN conda install matplotlib
RUN conda install jupyter
RUN conda install -c conda-forge transforms3d
RUN conda install -c conda-forge visdom

COPY . .



