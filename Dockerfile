FROM hashicorp/terraform:0.14.3

LABEL MAINTAINER="marcelo.rmourao@gmail.com"

WORKDIR /app

ADD * /app/
