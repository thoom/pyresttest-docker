# pyresttest-docker [![Build Status](https://travis-ci.org/thoom/pyresttest-docker.svg?branch=master)](https://travis-ci.org/thoom/pyresttest-docker)
Docker container for [PyRestTest](https://github.com/svanoort/pyresttest).

Using Docker since PyRestTest has some unique dependencies that can be a pain to install on
various Linux / macOS platforms and doesn't have native Windows support.

## Usage

To use with a smoke test for Github (using one of the examples on the official project):

    docker pull thoom/pyresttest
    docker run --rm -v $PWD/tests:/tests pyresttest-docker https://api.github.com github_api_smoketest.yml
