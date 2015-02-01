FROM ubuntu:14.10
MAINTAINER https://m-ko-x.de Markus Kosmal <code@m-ko-x.de>
 
RUN apt-get update -y
 
RUN apt-get install -y nano curl unzip git make python-pip wget && apt-get clean

RUN mkdir -p /tmp/mailpile
WORKDIR /tmp/mailpile
RUN git clone https://github.com/mailpile/Mailpile.git
WORKDIR /tmp/mailpile/Mailpile
RUN git checkout release/beta

RUN make debian-dev && apt-get clean
RUN ./mp setup

RUN wget https://github.com/jwilder/dockerize/releases/download/v0.0.2/dockerize-linux-amd64-v0.0.2.tar.gz
RUN tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.0.2.tar.gz
RUN chmod +x /usr/local/bin/dockerize

VOLUME ["/root/.local/share/Mailpile"]
 
EXPOSE 80
 
CMD "dockerize" "/Mailpile/mp" "--www=0.0.0.0:80" "--wait"