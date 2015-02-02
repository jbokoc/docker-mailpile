FROM ubuntu:14.04
MAINTAINER https://m-ko-x.de Markus Kosmal <code@m-ko-x.de>
 
RUN apt-get update -y

RUN apt-get install -y nano wget curl unzip git make python-pip && apt-get clean
 
 
# Add app
##################
WORKDIR /
RUN git clone https://github.com/mailpile/Mailpile.git
WORKDIR /Mailpile
RUN git checkout release/beta
# Build app
###########
RUN make debian-dev && apt-get clean
RUN ./mp setup
 
 
VOLUME ["/root/.local/share/Mailpile"]
 
EXPOSE 33411

ADD run.sh /run.sh
 
CMD /run.sh
