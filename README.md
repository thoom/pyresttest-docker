# pyresttest-docker
Docker container for [PyRestTest](https://github.com/svanoort/pyresttest).

Since PyRestTest has some unique dependencies that can be a pain to install on
various Linux / macOS platforms, I created this Docker container to make it painless!

## Usage

To use with a smoke test for Github (using one of the examples on the official project):

    docker pull thoom/pyresttest-docker
    docker run --rm -v $PWD:/tests thoom/pyresttest-docker https://api.github.com github_api_smoketest.yaml
