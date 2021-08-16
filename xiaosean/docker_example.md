xhost +
sudo docker run -t -i --name vit_pytorch --gpus 0 -v /home/xiaosean/:/data -p 7000:7000 -p 7001:7001 -p 7002:7002 -p 7003:7003 --shm-size 120G \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix pytorch/pytorch:1.7.1-cuda11.0-cudnn8-runtime /bin/bash

  pip install -r ./requirements.txt
  conda install -c conda-forge nvidia-apex 
  ./run.sh