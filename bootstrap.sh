#!/usr/bin/env bash

# download nodejs setup file and run
curl -sL https://deb.nodesource.com/setup_6.x | bash -

# import mongoDB public key
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
# create mongoDB list file
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

# update sources and install packages
apt-get update
apt-get install -y nodejs build-essential mongodb-org
