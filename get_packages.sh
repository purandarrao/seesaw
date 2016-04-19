#!/bin/bash
apt-get update
apt-get install golang -y
apt-get install protobuf-compiler -y
apt-get install libnl-3-dev libnl-genl-3-dev -y 
wget https://storage.googleapis.com/golang/go1.6.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.6.linux-amd64.tar.gz
. ~/.profile
go version
