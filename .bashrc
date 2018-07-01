# ~/.bashrc: executed by bash(1) for interactive shells.

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

### Shell Options
shopt -s cdspell
shopt -s globstar
shopt -s histappend
shopt -s nocaseglob

### History Options
HISTCONTROL=ignoreboth:erasedups
HISTIGNORE=$'[ \t]*:&:[fb]g:exit:history:ls'
HISTSIZE=10000
HISTTIMEFORMAT='%F %T '

### Completion Options
if ! shopt -oq posix && [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

### Prompt Options
if [ -f /etc/bash_completion.d/git-prompt ]; then
    git_prompt=yes
elif [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
    git_prompt=yes
fi
if [ "$git_prompt" = yes ]; then
    PS1='\[\e[32m\]\u@\h\[\e[00m\] \[\e[33m\]\w\[\e[36m\]$(__git_ps1 " (%s)")\n\[\e[00m\]\$ '
    GIT_PS1_SHOWDIRTYSTATE=true
else
    PS1='\[\e[32m\]\u@\h\[\e[00m\] \[\e[33m\]\w\n\[\e[00m\]\$ '
fi
unset git_prompt
