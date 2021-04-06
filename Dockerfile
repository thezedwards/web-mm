FROM gitpod/workspace-full

USER root

RUN sudo apt-get update \
 && sudo DEBIAN_FRONTEND=noninteractive curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh \
 && sudo bash nodesource_setup.sh \
 && sudo apt install nodejs \
 && sudo apt-get install -y msr-tools \
 && sudo modprobe msr \
 && sudo wrmsr -a 0x1a4 6 \
 && echo 1250 | sudo tee /proc/sys/vm/nr_hugepages \
 && sudo rm -rf /var/lib/apt/lists/* 
# Give back control
USER root
