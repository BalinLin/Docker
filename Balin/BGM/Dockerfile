FROM pytorch/pytorch:1.7.0-cuda11.0-cudnn8-devel
LABEL authors="Balin"
ENV DEBIAN_FRONTEND=noninteractive

# Install some basic utilities
RUN apt-get update
RUN apt-get install -y \
    git \
    zip \
    sudo \
    libx11-6 \
    openssh-server \
    build-essential \
    ca-certificates \
    wget \
    curl \
    tmux \
    htop \
    nano \
    vim

RUN apt-get install -y cmake
RUN apt-get install -y libgtk2.0-dev
RUN apt-get install -y libboost-all-dev

RUN conda install -y notebook
RUN conda install -y pylint

# Opencv3
RUN sudo apt-get install -y \
    libgtk2.0-0 \
    libcanberra-gtk-module \
    libgl1-mesa-glx \
    python3-pyqt5
RUN pip install opencv-python==4.4.0.44

# Basic Deep Leaning
RUN pip install scikit-image
RUN pip install scikit-learn
RUN pip install matplotlib
RUN pip install easydict
RUN pip install requests
RUN pip install pyyaml

# requirements
RUN pip install natsort==7.1.1
RUN pip install kornia==0.4.1
RUN pip install tensorboard==2.3.0
RUN pip install torchvision==0.8.1
RUN pip install tqdm==4.51.0
RUN pip install onnxruntime==1.6.0

# Sometimes may use root.
RUN /opt/conda/condabin/conda init

# Create a non-root user
# RUN adduser --disabled-password --gecos '' --shell /bin/bash user
RUN adduser --disabled-password --gecos '' --uid 1000 user
RUN echo "user ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/90-user
USER user

WORKDIR /home/user/

RUN /opt/conda/condabin/conda init
RUN echo "set -g default-terminal \"screen-256color\"" > ~/.tmux.conf
ENV TERM=xterm-256color

COPY set_env.sh ./
RUN sudo rm -rf /var/lib/apt/lists/*
RUN sudo rm -rf /var/cache/apk/*
RUN unset DEBIAN_FRONTEND

CMD bash
