FROM ubuntu

RUN apt-get install -y tar git curl nano wget dialog net-tools build-essential

RUN apt-get install -y python python-dev python-distribute python-pip git

RUN git clone https://github.com/johann2357/microservices.git app

RUN cd app && git checkout docker && make install && make createdb && make launch
