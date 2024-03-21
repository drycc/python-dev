ARG CODENAME
FROM registry.drycc.cc/drycc/base:${CODENAME}

ENV PYTHON_VERSION="3.12"

COPY . /
ENV PIP_DISABLE_ROOT_WARNING 1
RUN install-packages libssl-dev; \
  install-stack python $PYTHON_VERSION; \
  . init-stack; \
  set -eux; pip3 install --disable-pip-version-check --no-cache-dir -r dev_requirements.txt 2>/dev/null
