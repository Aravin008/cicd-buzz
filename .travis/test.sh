#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh
yes | sudo sh get-docker.sh
sudo systemctl start docker
sudo docker run -d -p 80:5000 aravin008/cicd-buzz
