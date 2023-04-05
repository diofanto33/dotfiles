#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi

source /usr/share/git/git-prompt.sh

export PATH=$PATH:/usr/lib/go/bin
