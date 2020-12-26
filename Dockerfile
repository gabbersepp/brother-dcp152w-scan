FROM ubuntu:latest
RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y wget sudo sane libsane

RUN wget https://download.brother.com/welcome/dlf006645/brscan4-0.4.9-1.amd64.deb && \
    wget https://download.brother.com/welcome/dlf006652/brscan-skey-0.3.1-1.amd64.deb

RUN sudo apt install -y ./brscan4-0.4.9-1.amd64.deb
RUN sudo apt install -y ./brscan-skey-0.3.1-1.amd64.deb

COPY scantofile.sh /opt/brother/scanner/brscan-skey/script/scantofile.sh

CMD exec /bin/bash -c "brscan-skey; trap : TERM INT; sleep infinity & wait"