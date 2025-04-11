FROM ubuntu:16.04
RUN apt-get update
RUN apt-get -y install apache2
ADD . /var/www.html
ENTRYPOINT apachectl -D FOREGROUND
ENV name Apponix devops

