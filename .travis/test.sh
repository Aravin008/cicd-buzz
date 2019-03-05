#!/bin/bash
pwd
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo docker run -d -p 80:5000 aravin008/cicd-buzz
