FROM centos:7
RUN yum -y update
RUN yum -y install httpd
RUN echo "<!DOCTYPE html><html><body bgcolor =blue><h1>Docker app web 3</h1><p>Super Site ITSTEP --- Made in USA. Version 2</p></body></html>" > /var/www/html/index.html

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
