# docker run -t -i --name style2pix --gpus all -v /home/xiaosean/:/data -p 8007:8007 -p 8008:8008 --shm-size 120G  pytorch/pytorch:1.7.1-cuda11.0-cudnn8-runtime /bin/bash
docker run -t -i --name style2pix --gpus all -v /home/xiaosean/:/data -p 8007:8007 -p 8008:8008 --shm-size 120G pix2style /bin/bash
# docker run -t -i --name style2pix --gpus all -v /home/xiaosean/:/data -p 8007:8007 -p 8008:8008 --shm-size 120G pytorchlightning/pytorch_lightning:base-conda-py3.8-torch1.8 /bin/bash
# apt update
# wget \
#     https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
#     && mkdir /root/.conda \
#     && bash Miniconda3-latest-Linux-x86_64.sh -b \
#     && rm -f Miniconda3-latest-Linux-x86_64.sh 
# export PATH=$PATH:~/miniconda3/bin/
# conda install pytorch torchvision cudatoolkit=10.1 -c pytorch
# --- apt install libglib2.0-0
# apt install libgtk2.0-dev
# --- conda install -c conda-forge opencv 
# --- apt-get install build-essential
# apt install libgl1-mesa-glx
# conda env update -n base --file ./environment/psp_env.yaml
