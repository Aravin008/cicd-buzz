#!/bin/bash
echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
export REPO="aravin008/cicd-buzz"
export TAG=`if [ "$TRAVIS_BRANCH" == "master" ]; then echo "latest"; else echo $TRAVIS_BRANCH
  ; fi`
docker build -f Dockerfile -t $REPO:$TAG .
docker image ls
echo "REPO:$REPO"
docker push $REPO
chmod 400 "login_mar5_1.pem"
ssh  -o "StrictHostKeyChecking no" -i "login_mar5_1.pem" $MACHINE 'bash -s' < .travis/test.sh
