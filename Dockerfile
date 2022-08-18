FROM ubuntu:18.04

RUN apt-get update --fix-missing
RUN apt-get upgrade -y
RUN apt-get install -y wget
RUN apt-get update --fix-missing && apt-get install -y --fix-missing --no-install-recommends git

RUN apt install -y python3
RUN apt-get install -y python3-pip
RUN pip3 install behave
RUN pip3 install requests

RUN apt-get install -y locales
RUN locale-gen ru_RU.utf8
RUN update-locale
ENV LC_ALL=ru_RU.utf8
