#!/bin/sh

help() {
    echo "Usage: $0 [option]"
    echo ""
    echo "option:"
    echo "    -h    print this message"
    echo "    -p    use proxy"
    echo "    -z    use zsh"
    echo ""
}

deploy() {
    dotfiles_dir=$(cd $(dirname $0); pwd)
    set -x
    ln -sf ${dotfiles_dir}/.aliases      ~/.aliases
    ln -sf ${dotfiles_dir}/.bashrc       ~/.bashrc
    ln -sf ${dotfiles_dir}/.ctags        ~/.ctags
    ln -sf ${dotfiles_dir}/.env          ~/.env
    ln -sf ${dotfiles_dir}/.gitconfig    ~/.gitconfig
    ln -sf ${dotfiles_dir}/.profile      ~/.profile
    ln -sf ${dotfiles_dir}/.tmux.conf    ~/.tmux.conf
    ln -sf ${dotfiles_dir}/.vimrc        ~/.vimrc
    ln -sf ${dotfiles_dir}/.vimrc.plugin ~/.vimrc.plugin
    if [ -n "$use_proxy" ]; then
        ln -sf ${dotfiles_dir}/.env.proxy ~/.env.proxy
    else
        rm -f ~/.env.proxy
    fi
    if [ -n "$use_zsh" ]; then
        ln -sf ${dotfiles_dir}/.zshenv ~/.zshenv
        ln -sf ${dotfiles_dir}/.zshrc  ~/.zshrc
    else
        rm -f ~/.zshenv
        rm -f ~/.zshrc
    fi
}

while getopts hpz opt
do
    case $opt in
        h) help; exit 0 ;;
        p) use_proxy=1  ;;
        z) use_zsh=1    ;;
    esac
done
deploy
