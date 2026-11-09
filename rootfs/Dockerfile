ARG CODENAME
FROM registry.drycc.cc/drycc/base:${CODENAME}

ARG PYTHON_VERSION="3.15"

COPY . /
ENV PIP_DISABLE_ROOT_WARNING 1
# TODO: Remove when test-results-parser supports Python 3.15 (codecov/test-results-parser#97).
RUN install-packages libssl-dev gcc g++; \
  install-stack python $PYTHON_VERSION; \
  . init-stack; \
  set -eux; PYO3_USE_ABI3_FORWARD_COMPATIBILITY=1 pip3 install --disable-pip-version-check --no-cache-dir -r dev_requirements.txt 2>/dev/null
