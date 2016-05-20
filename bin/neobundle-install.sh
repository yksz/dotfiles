#!/bin/sh

VERSION=ver.3.2

mkdir -p ~/.vim/bundle
git clone --depth=1 -b $VERSION https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
