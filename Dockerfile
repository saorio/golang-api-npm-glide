FROM golang:1.8.3

RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y netcat \
                       python \
                       python-pip \
                       nodejs
RUN update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10
RUN npm update -g npm@3
RUN pip install awscli
RUN curl https://glide.sh/get | sh

