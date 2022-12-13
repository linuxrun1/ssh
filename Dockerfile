FROM ubuntu:18.04

WORKDIR /usr/src/app

# setup okteto message
COPY bashrc /root/.bashrc

RUN apt-get -y update && \
    apt install -y python3
    
RUN rm /etc/update-motd.d/*
EXPOSE 3000
CMD ["python3", "-m", "http.server", "3000"]