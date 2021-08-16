# check if docker group exists
cat /etc/group | grep docker

sudo usermod -a -G docker $MY_USER

cat /etc/group | grep docker


