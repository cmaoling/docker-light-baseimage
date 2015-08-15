FROM armhfbuild/debian:wheezy
MAINTAINER Colinas Maoling "colinas.maoling@t-online.de"
VOLUME /container
ENV DEBIAN_FRONTEND noninteractive
RUN /bin/bash -c "apt-get update && apt-get upgrade -y && apt-get clean && apt-get autoremove"
#based on http://stackoverflow.com/questions/23179271/pyinstaller-installation-in-debian-linux
RUN apt-get install -y libpython2.7 python-setuptools python-pip sudo
RUN pip install pyinstaller
RUN adduser --disabled-password --no-create-home --quiet --gecos "" dummy
RUN ln -s /usr/local/lib/python2.7/dist-packages/PyInstaller/bootloader/Linux-32bit /usr/local/lib/python2.7/dist-packages/PyInstaller/bootloader/Linux-32bit-arm
RUN ls -la /container/py_tool/
CMD ["bash", "sudo -u dummy /container/py_tool/build.sh"]
