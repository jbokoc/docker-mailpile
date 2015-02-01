# docker-mailpile
Mailpile on docker.


#Sample
Example run command:

    docker run -d --name=mailpile -p 127.0.0.1:33411:33411 mkodockx/docker-mailpile

Example run command (exposing the storage volume):

    docker run -d --name=mailpile -p 127.0.0.1:33411:33411 -v <storage location>:/root/.local/share/Mailpile mkodockx/docker-mailpile

Access Mailpile entering the url:

http://localhost:3341

