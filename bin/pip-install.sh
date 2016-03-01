#!/bin/sh

DOWNLOAD_DIR="/tmp"

cd $DOWNLOAD_DIR
wget https://bootstrap.pypa.io/get-pip.py
proxy=`echo $http_proxy | sed -e 's/http:\/\///'` # remove 'http://' from $http_proxy
python get-pip.py --proxy=$proxy
rm get-pip.py
