# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# install antigen 
ANTIGEN=${HOME}/.antigen.sh
if ! [ -f "ANTIGEN" ]; then
    echo "installing antigen"
    curl -L git.io/antigen > $ANTIGEN
fi
source ANTIGEN

# plugin
antigen use oh-my-zsh

antigen bundle git
antigen bundle fzf

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle djui/alias-tips

antigen theme ys

# antigen apply
antigen apply
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
