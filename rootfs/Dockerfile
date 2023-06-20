ARG CODENAME
FROM registry.drycc.cc/drycc/base:${CODENAME}

COPY . /
ENV PIP_DISABLE_ROOT_WARNING 1
RUN install-packages libssl-dev; \
  install-stack python 3.11; \
  . init-stack; \
  set -eux; pip3 install --disable-pip-version-check --no-cache-dir -r dev_requirements.txt 2>/dev/null
