#!/bin/sh

# syntax highlighting
mkdir -p $HOME/.vim/ftdetect
mkdir -p $HOME/.vim/syntax
mkdir -p $HOME/.vim/autoload/go
ln -s $GOROOT/misc/vim/ftdetect/gofiletype.vim $HOME/.vim/ftdetect/
ln -s $GOROOT/misc/vim/syntax/go.vim $HOME/.vim/syntax
ln -s $GOROOT/misc/vim/autoload/go/complete.vim $HOME/.vim/autoload/go

# filetype plugins
mkdir -p $HOME/.vim/ftplugin/go
ln -s $GOROOT/misc/vim/ftplugin/go.vim $HOME/.vim/ftplugin
cp $GOROOT/misc/vim/ftplugin/go/* $HOME/.vim/ftplugin/go

# indentation plugin
mkdir -p $HOME/.vim/indent
ln -s $GOROOT/misc/vim/indent/go.vim $HOME/.vim/indent

# compiler plugin
mkdir -p $HOME/.vim/compiler
ln -s $GOROOT/misc/vim/compiler/go.vim $HOME/.vim/compiler

# godoc plugin
mkdir -p $HOME/.vim/plugin
mkdir -p $HOME/.vim/syntax
mkdir -p $HOME/.vim/autoload/go
ln -s $GOROOT/misc/vim/plugin/godoc.vim $HOME/.vim/plugin
ln -s $GOROOT/misc/vim/syntax/godoc.vim $HOME/.vim/syntax
ln -s $GOROOT/misc/vim/autoload/go/complete.vim $HOME/.vim/autoload/go

# gocode
go get -u github.com/nsf/gocode
$GOPATH/src/github.com/nsf/gocode/vim/update.sh
