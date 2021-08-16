docker run -t -i --name pytorch_lighting --gpus all -v /home/xiaosean/:/data -p 6000:6000 -p 6001:6001 -p 6002:6002 -p 6003:6003 --shm-size 120G \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix pytorchlightning/pytorch_lightning:base-conda-py3.8-torch1.4 /bin/bash



docker run -t -i --name pytorch_lighting --gpus all -v /home/xiaosean/:/data -p 6000:6000 -p 6001:6001 -p 6002:6002 -p 6003:6003 --shm-size 120G pytorch/pytorch:1.8.0-cuda11.1-cudnn8-runtime /bin/bash

docker run -t -i --name vit_pytorch --gpus all -v /home/xiaosean/:/data -p 7000:7000 -p 7001:7001 -p 7002:7002 -p 7003:7003 --shm-size 120G pytorch_lighting/bin/bash

docker run -t -i --name balagan --gpus all -v /home/xiaosean/:/data -p 6007:6007 -p 6008:6008 -p 6009:6009 --shm-size 120G pytorch/pytorch:1.8.0-cuda11.1-cudnn8-runtime /bin/bash

# Currently dockerfile cycleGAN
docker run -t -i --name CUT --gpus all -v /home/xiaosean/:/data -p 6011:6011 -p 6012:6012 -p 6013:6013 --shm-size 120G pytorch/pytorch:1.7.1-cuda11.0-cudnn8-runtime /bin/bash

pip install pyyaml



://github.com/jayleicn/animeGAN

Anime_Sketch_Colorization_Pair


chown -R xiaosean:xiaosean Anime_painting_pytorch_lighting

python train.py --exp_name 20210309_anime_1v40 --resume 

# top-left
python train.py --dataroot ./datasets/scratch2anime --name scratch2anime_CUT_20210312 --CUT_mode CUT --display_port 6011

# Bottom left
python train.py --dataroot ./datasets/scratch2anime --name scratch2anime_CUT_nce_idtFalse_20210312 --CUT_mode CUT --nce_idt False --display_port 6011


# top-right
python train.py --dataroot ./datasets/scratch2anime --name scratch2anime_FastCUT_20210312 --CUT_mode FastCUT --display_port 6011

# Bottom right
python train.py --dataroot ./datasets/scratch2anime --name scratch2anime_FastCUT_nce_idtFalse_20210312 --CUT_mode FastCUT --nce_idt False --display_port 6011


# Failed
python train.py --dataroot ./datasets/scratch2anime --name scratch2anime_FastCUT_inDim1_20210312 --input_nc 1 --CUT_mode FastCUT --nce_idt --display_port 6011



docker run -t -i --name  --gpus all -v /home/xiaosean/:/data -p 6007:6007 -p 6008:6008 -p 6009:6009 --shm-size 120G pytorch/pytorch:1.6.0-cuda10.1-cudnn7-runtime /bin/bash

docker run -it --gpus all --shm-size 128g -p 6012:6012 --name studioGAN -v /home/USER:/root/code --workdir /root/code mgkang/studiogan:latest /bin/bash

<!-- 20210317 Pix2pix Training -->
python train.py --dataroot ./datasets/anime2scratch_pair --name anime2scratch_pix2pix --model pix2pix --direction BtoA --batch_size 16


<!-- 20210319 CycleGAN Training -->
python train.py --dataroot ./datasets/scratch2anime --name 20210319_anime2scratch_cyclegan --model cycle_gan  --batch_size 8 --continue_train --epoch_count 101

<!-- 20210323 CUT Training -->
python train.py --dataroot ./datasets/emotion --name RGB2IR_EMOTION_CUT_20210323_patch16_layer12_16 --CUT_mode CUT --display_port 6011 --num_patches 16 --nce_layers 12,16

<!-- 20210323 CUT Training -->
python train.py --dataroot ./datasets/emotion --name RGB2IR_EMOTION_CUT_20210323_patch16_layer12_16_load_size1024 --CUT_mode CUT --display_port 6011 --num_patches 16 --nce_layers 12,16 --load_size 1024

<!-- 20210325 CUT Training -->
python train.py --dataroot ./datasets/emotion --name RGB2IR_EMOTION_STYLEGAN_CUT_20210325_patch16_load_size1024 --CUT_mode CUT --display_port 6011 --num_patches 16 --load_size 1024 --netG stylegan2 --netD stylegan2
<!-- 20210325 CUT Training -->
python train.py --dataroot ./datasets/emotion --name RGB2IR_EMOTION_STYLEGAN_CUT_20210325_patch16 --CUT_mode CUT --display_port 6011 --num_patches 16 --netG stylegan2 --netD stylegan2

<!-- 20210329 FastCUT Training -->
python train.py --dataroot ./datasets/scratch2anime --name scratch2anime_FastCUT_stylegan2_20210329 --CUT_mode FastCUT --display_port 6011 --netG stylegan2 --netD stylegan2

