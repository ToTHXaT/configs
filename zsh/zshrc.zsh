# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

setopt AUTO_CD
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ainur/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#Antigen Start
source /usr/share/zsh/share/antigen.zsh

# antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

#antigen theme kardan
antigen apply
#Antigen End

PROMPT="$> "
RPROMPT="%d"
