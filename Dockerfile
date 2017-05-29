FROM golang:1.8.3

RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install -y netcat \
                       python \
                       python-pip \
                       nodejs
RUN npm cache clean
RUN npm install n -g
RUN n stable
RUN ln -sf /usr/local/bin/node /usr/bin/node
RUN npm install -g npm@3
RUN pip install awscli
RUN curl https://glide.sh/get | sh

