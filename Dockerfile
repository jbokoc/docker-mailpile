FROM ubuntu:14.10
MAINTAINER https://m-ko-x.de Markus Kosmal <code@m-ko-x.de>
 
RUN apt-get update -y

# Force -y for apt-get
#######################
RUN echo "APT::Get::Assume-Yes true;" >>/etc/apt/apt.conf
 
RUN apt-get install curl unzip git make python-pip && apt-get clean
 
 
# Add app
##################
WORKDIR /
RUN git clone https://github.com/mailpile/Mailpile.git
WORKDIR /Mailpile
RUN pip install -r requirements.txt

# Build app
###########
RUN make debian-dev && apt-get clean
RUN ./mp setup
 

VOLUME ["/root/.local/share/Mailpile"]
 
EXPOSE 33411
 
RUN /Mailpile/mp --www=0.0.0.0:33411 --wait

ADD run.sh /run.sh

CMD ["/run.sh"]