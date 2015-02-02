FROM ubuntu:14.10
MAINTAINER https://m-ko-x.de Markus Kosmal <code@m-ko-x.de>

RUN apt-get update -y

# Force -y for apt-get
RUN echo "APT::Get::Assume-Yes true;" >>/etc/apt/apt.conf

# Add code & install the requirements
RUN apt-get install make python-pip && apt-get clean
ADD Makefile /Mailpile/Makefile
WORKDIR /Mailpile
RUN make debian-dev && apt-get clean

# Add code
ADD . /Mailpile

# Setup
RUN ./mp --setup
RUN ./mp --set sys.http_host=0.0.0.0:80

CMD /Mailpile/mp www
EXPOSE 80
VOLUME /.mailpile

ADD run.sh /run.sh

CMD ["/run.sh"]