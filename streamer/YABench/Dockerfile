FROM ubuntu:15.04
MAINTAINER Riccardo Tommasini

# Setup python and java and base system
ENV DEBIAN_FRONTEND noninteractive
ENV LANG=en_US.UTF-8

RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get -y install curl && \
  apt-get -y install maven && \
  apt-get -y install -q -y openjdk-8-jdk python3-pip libsnappy-dev language-pack-en supervisor

RUN pip3 install --upgrade pip requests && pip install psutil

RUN mkdir /opt/yabench
RUN curl -L -o - https://github.com/YABench/yabench/archive/v1.1.1.tar.gz | tar -zxf - --strip-components=1 -C /opt/yabench
WORKDIR opt/yabench

RUN mvn package

#TODO