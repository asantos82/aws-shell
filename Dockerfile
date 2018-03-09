FROM python:3.6.4-alpine3.7

MAINTAINER Andre Santos <dre.santos@gmail.com>

ARG USAGE_
ARG BUILD_DATE
ARG VCS_URL
ARG VCS_REF

LABEL org.label.schema.build-date=$BUILD_DATE \
      org.label.schema.name="aws-shell" \
      org.label.description="This is a docker image for aws-shell" \
      org.label.usage=$USAGE_ \
      org.label.url="https://github.com/awslabs/aws-shell" \
      org.label.vcs-url=$VCS_URL \
      org.label.vcs-ref=$VCS_REF \
      org.label.vendor="A Santos" \
      org.label.version="1.0" \
      org.label.schema-version="1.0.0-rc.1" \
      org.label.docker.cmd="docker run --rm -it -v \$HOME/.aws:/root/.aws dresantos/aws-shell" \
      org.label-schema.license="GPL-3.0"

RUN pip install aws-shell && pip install groff

CMD /usr/local/bin/aws-shell
