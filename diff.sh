#!/bin/sh

DOTFILES_DIR=$(cd $(dirname $0); pwd)

cd $DOTFILES_DIR
for file in `find . -maxdepth 1 -name ".*" -type f`; do
    ls $file | xargs -t -I{} diff {} ~/{}
done
