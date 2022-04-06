FROM docker.io/drycc/base:bullseye

COPY . /
ENV PIP_DISABLE_ROOT_WARNING 1
RUN install-packages libssl-dev; \
  install-stack python 3.10.4; \
  . init-stack; \
  set -eux; pip3 install --disable-pip-version-check --no-cache-dir -r dev_requirements.txt 2>/dev/null
