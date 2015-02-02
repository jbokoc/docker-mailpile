Mailpile Beta
===============

Docker build for the modern, fast web based email client with user-friendly encryption and privacy features

Example run command: 

    docker run -d --name=mailpile -p 127.0.0.1:33411:33411 staannoe/mailpile

Example run command (exposing the storage volume):

    docker run -d --name=mailpile -p 127.0.0.1:33411:33411 -v <storage location>:/root/.local/share/Mailpile staannoe/mailpile

Access Mailpile entering the url:

http://localhost:3341

in your browser.

