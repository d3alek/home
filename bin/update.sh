#!/bin/bash
source ~/.bash-feed
deef archnews | less -R

while true; do
    read -p "Continue updating?" yn
    case $yn in
        [Yy]* ) sudo pacman -Syu; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
