FROM debian:stable-slim

#RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
RUN apt update && \
apt install -y nginx && \
#ufw && \
#ufw allow 'Nginx HTTP' && \
service nginx start

EXPOSE 80

#STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
