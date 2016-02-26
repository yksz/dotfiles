alias more='less'
alias java='java -Dfile.encoding=UTF-8'

case $OSTYPE in
    cygwin)
        ;;
    darwin*)
        alias ls='ls -FG'
        alias vim='/usr/local/bin/vim'
        alias emacs='/usr/local/bin/emacs'
        alias ctags='/usr/local/bin/ctags'
        alias ql='qlmanage -p "$@" >& /dev/null'
        alias jjs="$JAVA_HOME/jre/bin/jjs"
        ;;
    linux*)
        ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -F --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -AF'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
