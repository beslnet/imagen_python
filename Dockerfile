##Descargamos una versión concreta de UBUNTU, a través del tag
FROM ubuntu:12.04
MAINTAINER Benjamín Silva López "benjamin@nexoit.com"

##Actualizamos el sistema
RUN apt-get update

##Instalamos nginx
RUN apt-get install -y nginx

###VOLUME
VOLUME /usr/share/nginx/www

##Creamos un fichero index.html en el directorio por defecto de nginx
ARG webpage
ADD $webpage /usr/share/nginx/www

##Arrancamos NGINX a través de ENTRYPOINT para que no pueda ser

##modificar en la creación del contenedor
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

##Exponemos el Puerto 80
EXPOSE 80
