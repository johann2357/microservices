FROM ubuntu:trusty

RUN echo "deb http://archive.ubuntu.com/ubuntu/ trusty main" >> /etc/apt/sources.list

RUN apt-get update

RUN apt-get install -y git curl nano wget net-tools build-essential

RUN apt-get install -y python python-dev python-distribute python-pip

RUN git clone https://github.com/johann2357/microservices.git app

WORKDIR /app

RUN git checkout docker

RUN make install

RUN make createdb

RUN make launch
