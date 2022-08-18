FROM ubuntu:18.04

RUN apt-get update && apt-get upgrade -y \
&& apt-get install --fix-missing --no-install-recommends -y wget git python3 python3-pip

RUN pip3 install behave
RUN pip3 install requests

RUN apt-get install -y locales
RUN locale-gen ru_RU.utf8
RUN update-locale
ENV LC_ALL=ru_RU.utf8
