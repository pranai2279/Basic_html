FROM Ubuntu
RUN apt-get update -y && apt-get install apache2 apache2-utils -y
EXPOSE 80
WORKDIR /var/www/html/
COPY index.html /var/www/html/
ENTRYPOINT [ "/usr/sbin/apache2ctl" ]
CMD [ "-D", "FOREGROUND" ]
