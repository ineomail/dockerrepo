FROM ubuntu:latest
ENV TZ=Europe/Kiev
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update
RUN apt-get -y install nmap apache2
COPY ./index.html /var/www/html
EXPOSE 8080
CMD apache2ctl -D FOREGROUND