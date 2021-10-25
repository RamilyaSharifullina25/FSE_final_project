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

RUN mkdir project
WORKDIR /project/
COPY environment.yml environment.yml
RUN conda env create -f environment.yml
RUN conda activate visloc_apr


#ARG PY_VER
# Install packages from conda and downgrade py (optional).
#RUN conda install -c anaconda -y python=${PY_VER}
#RUN conda install pytorch==1.0.0 torchvision==0.2.1 cuda80 -c pytorch
#RUN conda install matplotlib
#RUN conda install jupyter


