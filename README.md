# Attention
Not recommended to use in production yet. Even Beta is not really handable at all at the moment.

For more information have a look at [mailpile.is](http://mailpile.is).

# honestly

Although [mailpile.is](http://mailpile.is) has some more or less serious issues pending, this is the best effort to solve the 'single web mail client' to 'multiple server mail accounts' problem.

I started to create working kind of theme based styling via [LESS](http://lesscss.org/) instead of hardcoded inline values.

You can find the original source code at [github.com/mailpile/Mailpile](https://github.com/mailpile/Mailpile).

I forked it to my own repo at [das-repo.de/web/Mailpile](https://das-repo.de/web/Mailpile), so to be independent.

# docker-mailpile

Docker build for the modern, fast web based email client with user-friendly encryption and privacy features.

Example run command: 

    docker run -d --name=mailpile -p 127.0.0.1:33411:33411 mkodockx/docker-mailpile

Example run command (exposing the storage volume):

    docker run -d --name=mailpile -p 127.0.0.1:33411:33411 -v <storage location>:/root/.local/share/Mailpile mkodockx/docker-mailpile

Access Mailpile entering the url:

http://localhost:3341

in your browser.

