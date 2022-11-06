FROM ubuntu:20.04.1

USER root

RUN apt-get update && apt-get install -f -y curl &&\
    apt-get update && apt-get install -f -y telnet &&\
    apt-get update && apt-get install -f -y apache;

WORKDIR /var/www/html

COPY . .

EXPOSE 80

CMD [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND"]