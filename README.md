# deis/python-dev

[![Build Status](https://travis-ci.org/deis/docker-python-dev.svg?branch=master)](https://travis-ci.org/deis/docker-python-dev) [![Docker Repository on Quay](https://quay.io/repository/deis/python-dev/status "Docker Repository on Quay")](https://quay.io/repository/deis/python-dev)

A [Python 3][] language development toolbox.

Some [Deis Workflow][] components use this Docker image as a standard build and test environment,
but it is intended to be useful to any Python developer. Please help make deis/python-dev better by
creating [issues][] and submitting [pull requests][].

## Image Contents

* [codecov][]: uploader for codecov.io coverage reports
* [coverage][]: measures code coverage for Python programs
* [flake8][]: modular source code linter, including pep8, pyflakes and mccabe
* [Python 3.5.2][Python 3]

## Usage

Mount your local Python code into the container to run one of the included tools or scripts.
Here's an example of running `flake8` for deis/dockerbuilder:

```console
$ docker run --rm \
   --volume `pwd`/rootfs:/app \
   --workdir /app \
   quay.io/deis/python-dev:latest \
   flake8 --show-source --config=setup.cfg .
```

The latest deis/python-dev Docker image is available at:

* [Quay.io][]
  ```
  docker pull quay.io/deis/python-dev
  ```

* [Docker Hub][]
  ```
  docker pull deis/python-dev
  ```

[Python 3]: https://docs.python.org/3.5/
[Deis Workflow]: https://deis.com/
[Docker Hub]: https://hub.docker.com
[issues]: https://github.com/deis/docker-python-dev/issues
[jq]: https://stedolan.github.io/jq/
[pull requests]: https://github.com/deis/docker-python-dev/pulls
[codecov]: https://codecov.io/
[coverage]: https://coverage.readthedocs.io
[flake8]: https://gitlab.com/pycqa/flake8
[Quay.io]: https://quay.io
[shellcheck]: https://github.com/koalaman/shellcheck
