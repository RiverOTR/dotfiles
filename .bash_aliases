#!/bin/bash
T=(grep rm flc ls la ll l watch)
F=('grep -E --color=auto' rm\ -i fc ls\ --color=auto ls\ -A ls\ -AlF ls\ -CF watch\ -c)
for i in $(seq 0 $((${#T[@]}-1)))
do alias ${T[$i]}="${F[$i]}"
done
tmp='Godot_v4.3-stable_mono_linux.x86_64'
W=(cmatrix $tmp python3 tmux nvim)
WF=('cmatrix -abu 1' $tmp python3 tmux\ ls nvim)
WT=(cmatrix godot py tls vim)
for i in $(seq 0 $((${#W[@]}-1)));do
    if [ `which ${W[$i]}` ]
    then alias ${WT[$i]}="${WF[$i]}"
    fi
done
if [ "$(alias vim)" == " alias vim='nvim'" ]
then alias vi=vim
fi

alias icat='kitten icat'
alias config="git --git-dir=$HOME/src/dotfiles --work-tree=$HOME"
