# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000

# install antigen 
ANTIGEN=${HOME}/.antigen.sh
if [ ! -f ${ANTIGEN} ]; then
    echo "installing antigen"
    curl -L git.io/antigen > $ANTIGEN
fi
source $ANTIGEN

# plugin
antigen use oh-my-zsh
antigen bundle unixorn/fzf-zsh-plugin@main
antigen bundle git

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle djui/alias-tips
antigen bundle arzzen/calc.plugin.zsh
antigen bundle zsh-users/zsh-completions
antigen bundle unixorn/fzf-zsh-plugin@main

antigen theme ys

# antigen apply
antigen apply

# outer dependency
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# gvm
[ -f ~/.gvm/scripts/gvm ] && source ~/.gvm/scripts/gvm

# path
export PATH=${PATH}:~/.user_bin

# alias
[ -f ~/.alias ] && source ~/.alias

# env
[ -f ~/.env ] && source ~/.env

echo "all config loaded"