FROM alpine
MAINTAINER Ihsan Mokhlisse (https://github.com/ihsanmokhlisse)
RUN \
  adduser -h /app -s /sbin/nologin -D app && \
  apk add --update --no-cache atop && \
  rm -f /tmp/* /etc/apk/cache/*
USER app
WORKDIR /app
ENTRYPOINT ["atop"]
