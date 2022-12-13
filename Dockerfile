FROM ubuntu:18.04

WORKDIR /usr/src/app

# setup okteto message
COPY bashrc /root/.bashrc

RUN apt-get -y update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get install -y software-properties-common build-essential git zlib1g-dev && \
    apt-get -y update && \
    apt-get install -y nodejs yarn && \
    apt-get clean -y && apt-get autoremove -y
    
RUN rm /etc/update-motd.d/*

CMD ["bash"]