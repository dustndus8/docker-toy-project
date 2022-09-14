FROM ubuntu:18.04
RUN apt-get update
RUN apt-get -y install nginx
EXPOSE 80
ADD index.html /var/www/html/index.html
CMD ["nginx","-g","daemon off;"]