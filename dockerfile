FROM ubuntu

RUN apt-get update && apt-get install -y nginx && apt-get clean

COPY . /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]