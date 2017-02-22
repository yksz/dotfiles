#!/bin/sh

INSTALL_DIR="$HOME/bin"

cd $INSTALL_DIR
wget https://raw.githubusercontent.com/transcode-open/apt-cyg/master/apt-cyg
chmod 755 apt-cyg

apt-cyg -m ftp://ftp.iij.ad.jp/pub/cygwin/ update
