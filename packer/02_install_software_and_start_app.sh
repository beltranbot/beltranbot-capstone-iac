#!/bin/bash
# load environment variables
set -a; source /etc/environment; set +a;

# install git
sudo yum update -y
sudo yum install git -y

# install node
sudo yum install -y gcc-c++ make 
curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash -
sudo yum install -y nodejs

# configure app environment
mkdir /app
cd /app

git clone https://github.com/beltranbot/sre-bootcamp-capstone-project.git .

mv node/* .
rm -rf node

# install app dependencies
npm install

# install pm2 as a global dependency
npm install pm2 -g

# start index process and save it to launch on start up
su ec2-user
pm2 start index.js
pm2 save
pm2 startup
sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u ec2-user --hp /home/ec2-user
