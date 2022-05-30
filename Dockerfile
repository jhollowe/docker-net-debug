FROM ubuntu:20.04

RUN apt-get update \
  && apt-get install -y \
  curl \
  dnsutils \
  iftop \
  iperf \
  iperf3 \
  iproute2 \
  iputils-ping \
  less \
  nano \
  ncat \
  netcat \
  nmap \
  openssh-client \
  telnet \
  wget \
  && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/bin/bash"]
