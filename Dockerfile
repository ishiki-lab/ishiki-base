FROM balenalib/raspberry-pi-python:buster

RUN [ "cross-build-start" ]

# install deps
RUN sudo apt-get update
RUN sudo apt-get -y install python3-dev python3-pip python3-pil python3-setuptools

RUN sudo mkdir /opt/ishiki
COPY requirements.txt /opt/ishiki/requirements.txt

WORKDIR /opt/ishiki
RUN pip3 install -r requirements.txt

RUN [ "cross-build-end" ]
