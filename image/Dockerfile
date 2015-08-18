FROM armhfbuild/debian:wheezy
MAINTAINER Colinas Maoling "colinas.maoling@t-online.de"

ENV DEBIAN_FRONTEND noninteractive
RUN /bin/bash -c "apt-get update && apt-get upgrade -y && apt-get clean && apt-get autoremove"
RUN apt-get install -y python3 python-pip python3-yaml runit
ADD . /container
#RUN /container/build.sh

#CMD ["/container/tool/run"]
