#!/bin/bash
set -e

dnf update -y
dnf install -y docker git

systemctl enable docker
systemctl start docker

usermod -aG docker ec2-user

mkdir -p /opt/${project_name}

cat >/opt/${project_name}/deployment-info.txt <<INFO
Project: ${project_name}
Region: ${aws_region}
Docker installed and ready.
Application deployment is handled by GitHub Actions.
INFO
