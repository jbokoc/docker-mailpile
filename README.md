# Attention
Not recommended to use in production yet. Even Beta is not really handable at all at the moment.

For more information have a look at [mailpile.is](http://mailpile.is).


# docker-mailpile

Docker build for the modern, fast web based email client with user-friendly encryption and privacy features.

Running themable variant to allow custom colors.

Example run command: 

    docker run -d --name=mailpile -p 127.0.0.1:33411:33411 mkodockx/docker-mailpile

Example run command (exposing the storage volume):

    docker run -d --name=mailpile -p 127.0.0.1:33411:33411 -v <storage location>:/root/.local/share/Mailpile mkodockx/docker-mailpile

Access Mailpile entering the url:

http://localhost:3341

in your browser.

