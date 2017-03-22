FROM quay.io/deis/base:v0.3.6

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    python3-pip

COPY . /

RUN pip3 install --disable-pip-version-check --no-cache-dir -r dev_requirements.txt

