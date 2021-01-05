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

export PATH="${PATH}:/home/alek/.local/bin"

#PATH="/home/alek/perl5/bin${PATH:+:${PATH}}"; export PATH;
#PERL5LIB="/home/alek/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
#PERL_LOCAL_LIB_ROOT="/home/alek/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
#PERL_MB_OPT="--install_base \"/home/alek/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/home/alek/perl5"; export PERL_MM_OPT;

export PATH="$HOME/.node_modules/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export npm_config_prefix=~/.node_modules

export AIRFLOW_HOME=~/airflow

export GOHOME=~/go
export PATH="$PATH:$GOPATH/bin"

export PATH="$PATH:/home/alek/zhiva-mrezha/fabric-samples/bin"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/alek/.node_modules/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /home/alek/.node_modules/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/alek/.node_modules/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /home/alek/.node_modules/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /home/alek/freelancer/toptal/lanehoney/lane-honey-v2/node_modules/tabtab/.completions/slss.bash ] && . /home/alek/freelancer/toptal/lanehoney/lane-honey-v2/node_modules/tabtab/.completions/slss.bash
