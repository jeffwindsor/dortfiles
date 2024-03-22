#!/usr/bin/env zsh

# Options
#   https://zsh.sourceforge.io/Doc/Release/Options.html
# scripts and functions
setopt LOCAL_OPTIONS MULTIOS
# expansion and globbing
setopt EXTENDED_GLOB
# completions
setopt AUTO_MENU ALWAYS_TO_END AUTO_LIST NO_MENU_COMPLETE COMPLETE_IN_WORD NOMATCH
# changing directories
# setopt AUTO_CD AUTO_PUSHD CDABLE_VARS PUSHD_IGNORE_DUPS
# history
setopt EXTENDED_HISTORY HIST_EXPIRE_DUPS_FIRST HIST_IGNORE_DUPS HIST_IGNORE_SPACE INC_APPEND_HISTORY SHARE_HISTORY
# job control
setopt NOTIFY
# prompting
setopt PROMPT_SUBST
# input / output
unsetopt FLOW_CONTROL CORRECT_ALL
# zle
unsetopt BEEP

# Parameters
#   https://zsh.sourceforge.io/Doc/Release/Parameters.html
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
HISTSIZE=50000
SAVEHIST=10000


# shell independent aliases
if test -f $HOME/.aliasrc; then 
  source $HOME/.aliasrc
fi 

# z-oxide: cd replacement 
if command -v zoxide &>/dev/null; then
  eval "$(zoxide init zsh)"
fi

# starship prompt
if command -v starship &>/dev/null; then
  eval "$(starship init zsh)"
fi


if command -v nvm &>/dev/null; then
  mkdir -p $HOME/.nvm
  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh" 
  # [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
fi 

source $XDG_CONFIG_HOME/zsh/zsh-autosuggestions.zsh
source $XDG_CONFIG_HOME/zsh/zsh-history-substring-search.zsh
source $XDG_CONFIG_HOME/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -Uz compinit
compinit
