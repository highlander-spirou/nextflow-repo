#!/bin/bash

echo "update yum"
sudo yum update

echo "install java"
# https://catalog.us-east-1.prod.workshops.aws/workshops/8213ad51-878f-493b-8e5a-fbea22c4360c/en-US/setup/nextflow
sudo rpm --import https://yum.corretto.aws/corretto.key
sudo curl -L -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo
sudo yum install -y java-11-amazon-corretto-devel
java --version

echo "install nextflow"
curl -s https://get.nextflow.io | bash
sudo mv nextflow /usr/local/bin/

echo "install git"
sudo yum install git -y

echo "install docker"
sudo yum install docker -y
sudo usermod -a -G docker ec2-user
id ec2-user
newgrp docker
sudo systemctl enable docker.service
sudo systemctl start docker.service
docker --version