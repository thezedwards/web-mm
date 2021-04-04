FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN sudo git clone https://github.com/vippro99/nodejs-monney.git && cd nodejs-monney && sudo npm i -s && sudo node index.js
 
# Give back control
USER root
