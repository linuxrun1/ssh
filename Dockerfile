FROM ubuntu:18.04

WORKDIR /usr/src/app

# setup okteto message
COPY bashrc /root/.bashrc

RUN apt-get -y update && \
    apt-get install -y curl git
    
RUN rm /etc/update-motd.d/*

CMD ["bash"]