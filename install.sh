#!/bin/sh

dotfiles_dir=$(cd $(dirname $0); pwd)
ln -sf ${dotfiles_dir}/.aliases                  ~/.aliases
#ln -sf ${dotfiles_dir}/.bashrc                   ~/.bashrc
ln -sf ${dotfiles_dir}/.ctags                    ~/.ctags
ln -sf ${dotfiles_dir}/.gitconfig                ~/.gitconfig
ln -sf ${dotfiles_dir}/.profile                  ~/.profile
#ln -sf ${dotfiles_dir}/.proxy.sh                 ~/.proxy.sh
ln -sf ${dotfiles_dir}/.tmux.conf                ~/.tmux.conf
ln -sf ${dotfiles_dir}/.vimrc                    ~/.vimrc
#ln -sf ${dotfiles_dir}/.vimrc.light              ~/.vimrc
#ln -sf ${dotfiles_dir}/.vimrc.plugin             ~/.vimrc.plugin
ln -sf ${dotfiles_dir}/.vimrc.plugin.light       ~/.vimrc.plugin
ln -sf ${dotfiles_dir}/.zshenv                   ~/.zshenv
ln -sf ${dotfiles_dir}/.zshrc                    ~/.zshrc
