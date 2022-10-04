FROM ubuntu:20.04

USER root

RUN apt-get update && apt-get install -f -y curl &&\
    apt-get update && apt-get install -f -y telnet &&\
    apt-get update && apt-get install -f -y nginx;

WORKDIR /usr/share/nginx/html

COPY . .

EXPOSE 80

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
