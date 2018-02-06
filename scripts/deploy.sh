docker login -u $DOCKER_USER -p $DOCKER_PASS
docker tag pyresttest-docker thoom/pyresttest:latest
docker tag pyresttest-docker thoom/pyresttest:$TRAVIS_BUILD_NUMBER

docker push thoom/pyresttest