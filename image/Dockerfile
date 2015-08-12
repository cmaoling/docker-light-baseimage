FROM armhfbuild/debian:wheezy
MAINTAINER Colinas Maoling "colinas.maoling@t-online.de"

ADD . /container
RUN /container/build.sh

CMD ["/container/tool/run"]
