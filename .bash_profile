### 環境変数の設定
export PATH=$PATH:~/bin

## Proxy
[ -f ~/.proxy.sh ] && source ~/.proxy.sh

## Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

## PostgreSQL
export PGHOST=localhost
export PGCLIENTENCODING=UTF-8
export PGUSER=postgres

case $OSTYPE in
    cygwin)
        export PATH=$PATH:/usr/sbin
        ## Scheme
        export SCHEME_LIBRARY_PATH=/usr/local/lib/slib/
        ;;
    darwin*)
        ## Java
        export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home
        ## Groovy
        export GROOVY_HOME=/usr/local/Cellar/groovy/2.4.3/libexec
        ## Node.js
        export NODE_PATH=/usr/local/lib/node_modules
        ## Felix
        export FELIX_HOME=~/tool/felix-framework-4.4.1
        ## Android
        export ANDROID_SDK_ROOT=~/Library/Android/sdk
        export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
        ;;
    linux*)
        ;;
esac


### エイリアスの設定
alias ls='ls -FG'
alias java='java -Dfile.encoding=UTF-8'

case $OSTYPE in
    cygwin)
        ;;
    darwin*)
        alias vim='/usr/local/bin/vim'
        alias ctags='/usr/local/bin/ctags'
        alias ql='qlmanage -p "$@" >& /dev/null'
        alias jjs="$JAVA_HOME/jre/bin/jjs"
        ;;
    linux*)
        ;;
esac
