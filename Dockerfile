FROM ubuntu:14.10
MAINTAINER  https://m-ko-x.de Markus Kosmal <code@m-ko-x.de>

# Update packages lists
RUN apt-get update -y

# Force -y for apt-get
RUN echo "APT::Get::Assume-Yes true;" >>/etc/apt/apt.conf

# Add code & install the requirements
RUN apt-get install make python-pip git gnupg openssl python-devel libxml2-devel libxslt-devel \
    zlibrary-devel python-jinja2 python3-jinja2 python-lxml \
    python3-lxml python-pgpdump python3-pgpdump && apt-get clean

WORKDIR /Mailpile

RUN git clone https://github.com/mailpile/Mailpile.git .
RUN make debian-dev && apt-get clean
RUN gem install rails-i18n

# Add startup script
ADD start.bash /mp-start

# Volume
VOLUME /.mailpile

CMD ["bash", "/mp-start"]
EXPOSE 33411
