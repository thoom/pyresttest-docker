# pyresttest-docker
Docker container for [PyRestTest](https://github.com/svanoort/pyresttest).

Using Docker since PyRestTest has some unique dependencies that can be a pain to install on
various Linux / macOS platforms and doesn't have native Windows support.

## Usage

To use with a smoke test for Github (using one of the examples on the official project):

    docker pull thoom/pyresttest
    docker run --rm -v $PWD:/tests thoom/pyresttest https://api.github.com examples/github_api_smoketest.yaml
