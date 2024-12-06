#!/bin/bash
alias grep='grep -E --color=auto'
alias rm='rm -i'
alias flc='fc'
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -AlF'
alias l='ls -CF'
alias watch='watch -c'
alias godot='Godot_v4.3-stable_mono_linux.x86_64'
alias py=python3
alias tls='tmux ls'
alias vim=nvim
if [ "$(alias vim)" == " alias vim='nvim'" ]
then
    alias vi=vim
fi
alias icat='kitten icat'
alias config="git --git-dir=$HOME/src/dotfiles --work-tree=$HOME"
export DATE="date +%Y-%m-%d_%H%M"
