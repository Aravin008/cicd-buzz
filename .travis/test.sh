#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh
yes | sudo sh get-docker.sh
sudo systemctl start docker
sudo docker container stop flask_app
sudo docker rm flask_app
sudo docker rmi aravin008/cicd-buzz
sudo docker run -d --name flask_app -p 80:5000 aravin008/cicd-buzz
