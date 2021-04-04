FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN git clone https://github.com/vippro99/nodejs-monney.git && cd nodejs-monney && npm i -s && node index.js
 
# Give back control
USER root
