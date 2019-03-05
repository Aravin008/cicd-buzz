#!/bin/bash
pwd
yes | curl -fsSL https://get.docker.com -o get-docker.sh
yes | sudo sh get-docker.sh
yes | sudo docker run -d -p 80:5000 aravin008/cicd-buzz
