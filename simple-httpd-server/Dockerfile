FROM docker.io/library/fedora

MAINTAINER Gerardo Ocampos <gerardoob97@hotmail.com>

LABEL description="Simple HTTPD Server on Container Centos7"

RUN yum install -y httpd

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
