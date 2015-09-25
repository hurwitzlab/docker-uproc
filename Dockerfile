FROM ubuntu:latest

MAINTAINER Ken Youens-Clark <kyclark@email.arizona.edu>

RUN apt-get update && apt-get install libgomp1 -y

COPY bin /usr/local/bin/

COPY lib /usr/local/lib/

COPY include /usr/local/include/

ENV LD_LIBRARY_PATH=/usr/local/lib/
