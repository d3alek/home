#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.xprofile ]] && source ~/.xprofile

shopt -s checkwinsize # to fix the line width issues with resizing

if [ -f ~/.idiot_variables ]; then
    . ~/.idiot_variables
fi

if [ -f ~/.otselo_variables ]; then
    . ~/.otselo_variables
fi


alias ls='ls --color=auto'

PATH=$PATH:~/.cabal/bin

# keychain command from https://wiki.archlinux.org/index.php?title=SSH_keys&redirect=no#Keychain
# feel free to just add new keys as you need them (it automatically knows to search ~/.ssh)
eval $(keychain --eval --quiet id_rsa)
export GOPATH=$HOME/gopath
export PATH=$GOPATH:$GOPATH/bin:$PATH
