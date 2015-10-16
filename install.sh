#!/bin/sh

BASE_DIR=$(cd $(dirname $0); pwd)
ln -sf ${BASE_DIR}/.bash_profile       ~/.bash_profile
ln -sf ${BASE_DIR}/.ctags              ~/.ctags
ln -sf ${BASE_DIR}/.gitconfig          ~/.gitconfig
ln -sf ${BASE_DIR}/.vimrc              ~/.vimrc
ln -sf ${BASE_DIR}/.vimrc.plugin       ~/.vimrc.plugin
#ln -sf ${BASE_DIR}/.vimrc.plugin.light ~/.vimrc.plugin.light
ln -sf ${BASE_DIR}/.wgetrc             ~/.wgetrc
ln -sf ${BASE_DIR}/.zshrc              ~/.zshrc
