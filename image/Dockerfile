FROM armhfbuild/debian:wheezy
MAINTAINER Colinas Maoling "colinas.maoling@t-online.de"

ENV DEBIAN_FRONTEND noninteractive
RUN /bin/bash -c "apt-get update && apt-get upgrade -y && apt-get clean && apt-get autoremove"
RUN apt-get install -y python3 python-pip python3-yaml runit
VOLUME /container
ADD . /container
RUN chmod 750 /container/tool/py_tool/setuser /container/tool/py_tool/my_init
RUN ls -la /container/tool/py_tool
RUN /container/build.sh

CMD ["/container/tool/run"]
