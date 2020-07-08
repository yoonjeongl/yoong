
FROM ubuntu:18.04
MAINTAINER LYJ
RUN apt-get -y dist-upgrade
RUN apt-get -y upgrade
RUN apt-get -y update
RUN apt-get -y install apt-utils vim \
    locales locales-all
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
# Install python and virtualenv
RUN apt-get install -y build-essential python3-pip python-virtualenv ca-certificates uwsgi-plugin-python3 nginx libmemcached-dev

# Install 
RUN apt-get install -y libpq-dev libjpeg-dev zlib1g-dev libgeoip-dev \
    uwsgi-plugin-python3 nginx libmemcached-dev


RUN pip3 install --upgrade pip
RUN pip3 install --upgrade setuptools
RUN pip3 install uwsgi
RUN pip3 install awscli

RUN service nginx start
