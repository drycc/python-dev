FROM docker.io/library/python:3.9-alpine

COPY . /

RUN apk add curl bash openssl \
  && curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash \
  && pip3 install --disable-pip-version-check --no-cache-dir -r dev_requirements.txt

