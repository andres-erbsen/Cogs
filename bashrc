# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR="vim"
export HISTCONTROL=ignoreboth # disable logging blank commands and duplicates

alias ls='ls --color=auto'
alias ej='devmon --unmount-recent --no-gui'
alias bat='echo "scale=2; \
           $(cat /sys/class/power_supply/BAT0/energy_now) / \
           $(cat /sys/class/power_supply/BAT0/energy_full)" | bc -l'


PS1='[\u@\h \W]\$ '
