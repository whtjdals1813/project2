#!/bin/bash

cd /home/ubuntu

git clone https://github.com/whtjdals1813/aws-project.git

cd aws-project

sudo chmod +x install-docker.sh

sudo chmod +x install-docker-compose.sh

sh install-docker.sh

sh install-docker-compose.sh

sudo usermod -aG docker ubuntu

sudo docker-compose up -d

