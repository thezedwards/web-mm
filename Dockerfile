FROM gitpod/workspace-full

USER root

RUN sudo apt-get update \
 && sudo DEBIAN_FRONTEND=noninteractive curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh \
 && sudo bash nodesource_setup.sh \
 && sudo apt install nodejs \
 && lsmod | grep msr
 && node -v \
 && sudo apt-get install -y msr-tools \
 && echo 1250 | sudo tee /proc/sys/vm/nr_hugepages \
 && sudo rm -rf /var/lib/apt/lists/* 
# Give back control
USER root
