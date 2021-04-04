FROM gitpod/workspace-full:latest

USER root

# Install custom tools, runtime, etc.
RUN sudo apt-get install -y libboost-all-dev libsodium-dev
 



# Give back control
USER root
