#!/bin/bash
FROM ubuntu:14.04
RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*
COPY ./get-favicon.sh /
ENTRYPOINT ["/get-favicon.sh"]