FROM gitpod/workspace-full

USER root

RUN sudo sudo DEBIAN_FRONTEND=noninteractive apt-get update \
 && sudo DEBIAN_FRONTEND=noninteractive apt-get install kmod \
 && sudo DEBIAN_FRONTEND=noninteractive apt-get install -y msr-tools \
 && sudo modprobe msr \
 && sudo wrmsr -a 0x1a4 6 \
 && echo 1250 | sudo tee /proc/sys/vm/nr_hugepages \
 && sudo rm -rf /var/lib/apt/lists/* 
# Give back control
USER root
