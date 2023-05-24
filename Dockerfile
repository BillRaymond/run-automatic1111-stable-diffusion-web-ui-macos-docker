FROM ubuntu:22.04

# These settings prevent a timezone prompt when Python installs
ENV TZ=US/Pacific \
    DEBIAN_FRONTEND=noninteractive

RUN echo "#################################################"
RUN echo "Get the latest APT packages"
RUN echo "apt-get update"
RUN apt-get update


# Install AUTOMATIC1111 pre-requisites
RUN apt-get install -y \
    cmake \
    rustc \
    git-all \
    wget \
    apt-utils \
    jq

RUN apt -y autoremove && apt autoclean


# Install Python pre-requisites, including Python 3.x
# Google perftools includes TCMalloc, which helps with CPU memory usage
RUN apt-get install -y \
    software-properties-common \ 
    python3 \
    python3-pip \
    python3-ipykernel \
    libopencv-dev \
    python3-opencv \
    python3.10-venv \
    google-perftools \
    sudo

RUN apt -y autoremove && apt autoclean

# Install tensorflow. Note that AWS manages Linux distributions
# RUN pip install tensorflow-cpu-aws pyyaml h5py


# Configure git
RUN git config --global user.name "Some One" &&\
    git config --global user.email some.one@some.one &&\
    git config --global init.defaultBranch main

ENTRYPOINT ["/entrypoint.sh"]