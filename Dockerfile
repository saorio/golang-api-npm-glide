FROM golang:1.8.3

RUN apt-get update
RUN apt-get install -y netcat \
                       python \
                       python-pip \
                       npm \
                       nodejs
RUN update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10
RUN npm install -g npm@3
RUN pip install awscli
RUN curl https://glide.sh/get | sh

