#!/bin/sh

DOTFILES_DIR=$(cd $(dirname $0); pwd)

help() {
    echo "Usage: $0 [option]"
    echo ""
    echo "option:"
    echo "    -h    print this message"
    echo "    -c    copy instead of link"
    echo "    -f    use vimrc.filetype"
    echo "    -p    use proxy"
    echo "    -z    use zsh"
    echo ""
}

deploy() {
    file=$1
    if [ -z "$file" ]; then
        return
    fi

    if [ -n "$copy_mode" ]; then
        set -x
        rm -f ~/${file} && cp ${DOTFILES_DIR}/${file} ~/${file}
        set +x
    else
        set -x
        ln -sf ${DOTFILES_DIR}/${file} ~/${file}
        set +x
    fi
}

undeploy() {
    file="$1"
    if [ -z "$file" ]; then
        return
    fi

    set -x
    rm -f ~/${file}
    set +x
}

install() {
    deploy .alias
    deploy .bashrc
    deploy .ctags
    deploy .env
    deploy .gitconfig
    deploy .profile
    deploy .tmux.conf
    deploy .vimrc
    deploy .vimrc.plugin
    if [ -n "$use_filetype" ]; then
        deploy .vimrc.filetype
        deploy .vimrc.plugin.filetype
    else
        undeploy .vimrc.filetype
        undeploy .vimrc.plugin.filetype
    fi
    if [ -n "$use_proxy" ]; then
        deploy .env.proxy
    else
        undeploy .env.proxy
    fi
    if [ -n "$use_zsh" ]; then
        deploy .zshenv
        deploy .zshrc
    else
        undeploy .zshenv
        undeploy .zshrc
    fi
}

while getopts hcfpz opt
do
    case $opt in
        h) help; exit 0 ;;
        c) copy_mode=1 ;;
        f) use_filetype=1 ;;
        p) use_proxy=1    ;;
        z) use_zsh=1      ;;
    esac
done
install
