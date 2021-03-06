#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

shopt -s checkwinsize # to fix the line width issues with resizing

eval $(keychain --eval --quiet --noask id_rsa) 

source .bash-feed
