FROM docker.io/library/python:3.9-alpine

COPY . /

RUN apk add curl bash openssl \
  && pip3 install --disable-pip-version-check --no-cache-dir -r dev_requirements.txt

