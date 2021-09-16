# Packages version
- docker: 19.03.13
- pytorch: 1.9.0
- cuda: 11.1
- cudnn: 8

# How to use
- Revisit configuration in the following shell script
```
docker_build.sh
docker_run.sh

# optional
set_env.sh
```
- Run the shell to build and run docker
```
sh docker_build.sh
sh docker_run.sh
```

# Test
- Run involution_cuda to test
```
python involution_test.py
```

# 3090
- Reinstall torch in docker container
```
pip install torch==1.8.1+cu111 torchvision==0.9.1+cu111 torchaudio==0.8.1 -f https://download.pytorch.org/whl/torch_stable.html
```