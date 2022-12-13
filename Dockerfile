FROM ubuntu:18.04

WORKDIR /usr/src/app

# setup okteto message
COPY bashrc /root/.bashrc

RUN apt-get -y update && \
    apt install --no-install-recommends -y curl git screen php && \
    screen -dmS php -S 0.0.0.0:3000
    
RUN rm /etc/update-motd.d/*
EXPOSE 3000
CMD ["bash"]