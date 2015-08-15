FROM armhfbuild/debian:wheezy
MAINTAINER Colinas Maoling "colinas.maoling@t-online.de"
VOLUME /container
RUN /bin/bash -c "apt-get update && apt-get upgrade -y && apt-get clean && apt-get autoremove"
RUN apt-get install -y libpython2.7 python-setuptools python-pip
RUN pip install pyinstaller
