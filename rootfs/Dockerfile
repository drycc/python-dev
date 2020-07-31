FROM ubuntu:20.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    python3-pip

COPY . /

RUN pip3 install --disable-pip-version-check --no-cache-dir -r dev_requirements.txt

