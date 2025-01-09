#! /bin/bash
# update os
dnf update -y
# set server hostname as jenkins-server
hostnamectl set-hostname jenkins-server
# install git
dnf install git -y
# install java 11
dnf install fontconfig java-11-amazon-corretto -y

# install jenkins
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat/jenkins.io-2023.key
dnf upgrade -y
dnf install jenkins-2.452.3-1.1 -y

# install docker
dnf install docker -y
systemctl start docker
systemctl enable docker
usermod -a -G docker ec2-user
usermod -a -G docker jenkins
systemctl enable jenkins
systemctl start jenkins
# install docker compose
curl -SL https://github.com/docker/compose/releases/download/v2.32.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
# install python 3
dnf install -y python3-pip python3-devel
# install ansible
pip3 install ansible
# install boto3
pip3 install boto3 botocore
# install terraform
wget https://releases.hashicorp.com/terraform/1.10.3/terraform_1.10.3_linux_amd64.zip
unzip terraform_1.10.3_linux_amd64.zip -d /usr/local/bin
