FROM debian:stable-slim

RUN apt update && \
apt install -y nginx

VOLUME /var/www/html/

COPY ./index.html /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
