FROM balenalib/armv7hf-ubuntu:bionic

RUN apt-get update && \
	apt-get install -y build-essential git cmake autoconf libtool pkg-config

#ARG url
#ARG uuid
#ARG key
#ARG interval
#ARG displayId
#ENV URL=$url
#ENV UUID=$uuid
#ENV KEY=$key
#ENV INTERVAL=$interval
#ENV DISPLAY_ID=$displayId

RUN mkdir -p /app

ADD . /app

WORKDIR /app

RUN cmake . && make

CMD ["/bin/bash"]