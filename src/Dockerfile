FROM armhfbuild/debian:wheezy
MAINTAINER Colinas Maoling "colinas.maoling@t-online.de"
VOLUME /container
ENV DEBIAN_FRONTEND noninteractive
RUN /bin/bash -c "apt-get update && apt-get upgrade -y && apt-get clean && apt-get autoremove"
#based on http://stackoverflow.com/questions/23179271/pyinstaller-installation-in-debian-linux
RUN apt-get install -y libpython2.7 python-setuptools python-pip
RUN pip install pyinstaller
RUN adduser --disabled-password --no-create-home --quiet dummy
