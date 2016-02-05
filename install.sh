#!/bin/sh

script_dir=$(cd $(dirname $0); pwd)
ln -sf ${script_dir}/.bash_profile       ~/.bash_profile
ln -sf ${script_dir}/.bash_hrc           ~/.bash_hrc
ln -sf ${script_dir}/.ctags              ~/.ctags
ln -sf ${script_dir}/.emacs              ~/.emacs
ln -sf ${script_dir}/.gitconfig          ~/.gitconfig
ln -sf ${script_dir}/.proxy.sh           ~/.proxy.sh
ln -sf ${script_dir}/.vimrc              ~/.vimrc
ln -sf ${script_dir}/.vimrc.plugin       ~/.vimrc.plugin
#ln -sf ${script_dir}/.vimrc.plugin.light ~/.vimrc.plugin.light
ln -sf ${script_dir}/.zprofile           ~/.zprofile
ln -sf ${script_dir}/.zshrc              ~/.zshrc
