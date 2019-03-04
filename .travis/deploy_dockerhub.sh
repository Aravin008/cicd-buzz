#!/bin/sh
#docker login -u $DOCKER_USER -p $DOCKER_PASS
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
if [ "$TRAVIS_BRANCH" = "master" ]; then
    TAG="latest"
else
    TAG="$TRAVIS_BRANCH"
fi
docker build -f Dockerfile -t aravin008/cicd-buzz:$TAG .
docker push aravin008/cicd-buzz
