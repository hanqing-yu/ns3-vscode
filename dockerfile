FROM ubuntu:20.04

MAINTAINER iqhy <imyuhanqing@outlook.com>

LABEL Description="Debug ns3 in Visual Studio Code"
ARG DEBIAN_FRONTEND=noninteractive

# Needed packages
RUN apt-get update && apt-get install -y \
  git \
  gcc \
  g++ \
  vim \
  python3 \
  python2 \
  gdb


# Copy ns3 and vscode configuration files
WORKDIR /usr
COPY ./ns-allinone-3.34 /usr/ns-allinone-3.34
COPY ./.vscode /usr/ns-allinone-3.34/ns-3.34/.vscode

# Configure and compile ns3
RUN cd ns-allinone-3.34 && ./build.py --enable-examples --enable-tests

# Cleanup
RUN apt-get clean && \
  rm -rf /var/lib/apt

# Environment variable for gdb
ENV LD_LIBRARY_PATH='/usr/ns-allinone-3.34/ns-3.34/build/lib'
