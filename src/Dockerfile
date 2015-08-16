FROM armhfbuild/debian:wheezy
MAINTAINER Colinas Maoling "colinas.maoling@t-online.de"
VOLUME /container
ENV DEBIAN_FRONTEND noninteractive
RUN /bin/bash -c "apt-get update && apt-get upgrade -y && apt-get clean && apt-get autoremove"
#based on http://stackoverflow.com/questions/23179271/pyinstaller-installation-in-debian-linux
RUN apt-get install -y libpython2.7 python-setuptools python-pip
RUN pip install pyinstaller
#Noarm bootloader available, building based on: http://pythonhosted.org/PyInstaller/#building-the-bootloader
RUN mkdir /pyInstall
WORKDIR /pyInstall
RUN wget -P /pyInstall https://pypi.python.org/packages/source/P/PyInstaller/PyInstaller-2.1.tar.gz#md5=248531f6fc94b0ffb02473321496d6d0
RUN ls -la
#ADD deb.list /etc/apt/sources.list.d/lsb.list 
RUN apt-cache policy lsb
RUN apt-get install -y lsb
RUN mkdir /lsb
WORKDIR /lsb
ENV lsbBuild="lsb-build-cc"
ENV lsbBuildDir="-3.2.0"
ENV lsbBuildVersion="3_3.2.0"
RUN wget -P /lsb http://http.debian.net/debian/pool/main/l/${lsbBuild}3/${lsbBuild}${lsbBuildVersion}.orig.tar.gz
RUN tar -xvzf  /lsb/${lsbBuild}${lsbBuildVersion}.orig.tar.gz
WORKDIR /lsb/${lsbBuild}${lsbBuildDir}/
RUN ls -la .
RUN make install
WORKDIR /pyInstall
RUN ls -la
RUN tar -xvzf PyInstaller-2.1.tar.gz
# from ftp://ftp.linuxfoundation.org/pub/lsb/snapshots/build_env/lsb-build-5.0.5-0.20150815.3.src.rpm
ADD lsb-build-5.0.5.tar.gz /lsb
WORKDIR /lsb
#RUN tar -xvzf  /lsb/lsb-build-5.0.5.tar.gz
#WORKDIR /lsb/lsb-build-5.0.5/lsbdev-cc/
#RUN make install


#WORKDIR /pyInstall/PyInstaller-2.1/bootloader
#RUN python /pyInstall/PyInstaller-2.1/bootloader/waf configure build install
#RUN ls -la /opt/lsb/bin/
#
##pyInstaller may not be called as root, creating dummy account
#RUN apt-get install -y sudo
#RUN adduser --disabled-password --no-create-home --quiet --gecos "" dummy
##CMD ["bash", "sudo -u dummy /container/py_tool/build.sh"]
