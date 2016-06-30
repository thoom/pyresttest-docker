FROM python:2-alpine
MAINTAINER Z.d. Peacock <zdp@thoomtech.com>

# This needs to be set otherwise pycurl won't link correctly
ENV PYCURL_SSL_LIBRARY=openssl

RUN apk add --no-cache --update openssl curl \
    && apk add --no-cache --update --virtual .build-deps build-base python-dev curl-dev \
    && pip install jmespath pyresttest \
    && apk del .build-deps

WORKDIR /tests

ENTRYPOINT ["pyresttest"]