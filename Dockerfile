FROM ubuntu:14.10

RUN apt-get update -y && apt-get install -y openssl nano python-imaging python-jinja2 python-lxml libxml2-dev libxslt1-dev python-pgpdump

WORKDIR /Mailpile
ADD . /Mailpile

RUN ./mp setup

CMD ./mp --www=0.0.0.0:80 --wait
EXPOSE 80

VOLUME /root/.local/share/Mailpile
