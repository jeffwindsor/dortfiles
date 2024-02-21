#!/usr/bin/env zsh

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# shell independent aliases
if test -f $HOME/.aliasrc; then 
  source $HOME/.aliasrc
fi 

# z-oxide: cd replacement 
if test -f $XDG_DATA_HOME/zoxide/zoxide.zsh; then
  source $XDG_DATA_HOME/zoxide/zoxide.zsh
fi

# starship prompt
if command -v starship &>/dev/null; then
  eval "$(starship init zsh)"
fi

# zellij: terminal multiplexer
# if command -v zellij &>/dev/null; then
#   # open zellij automticallyon terminal start
#   eval "$(zellij setup --generate-auto-start zsh)"
# fi

########################################################
# ZSH (https://zsh.sourceforge.io/Doc/Release)
#   Options
unsetopt BEEP

#   Parameters
HISTSIZE=50000
SAVEHIST=10000

