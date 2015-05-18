#!/bin/zsh

# Set Basic Terminal Prompt
PS1='{%D - %*} [%n@%m] %d %% '

# Set Advanced Terminal Prompt
zle-keymap-select() {
	# RPROMPT = Right Prompt
	RPROMPT=""
	# Check if keymap is set to vi command mode and set the right prompt to show CMD, otherwise, set it to INS
	[[ $KEYMAP = vicmd ]] && RPROMPT="[CMD]" || RPROMPT="[INS]"
	# Reset the prompt to show the setting
	zle reset-prompt
}
zle-line-init() {
	RPROMPT=""
	# Set the keymap to command mode and set the right prompt to cmd
	zle -K vicmd && RPROMPT="[CMD]"
	zle reset-prompt
}
# Exporting Advanced Terminal Prompt widgets
zle -N zle-keymap-select
zle -N zle-line-init

# Setting the key timout for switching between modes
export KEYTIMEOUT=1

# Completion
autoload -U compinit
compinit
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

# Correction
setopt correctall

# Set to KSH-like
setopt SH_WORDSPLIT
setopt KSH_TYPESET
unsetopt NOMATCH
setopt KSH_ARRAYS

# History
HISTSIZE=2000
HISTFILE="$HOME/.history"
SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups
setopt hist_ignore_space

# Editor
export EDITOR="vim"

# Visual
export VISUAL="vim"

# Pager
export PAGER="less"

# Set Vi style keybindings
bindkey -v

# Window title
case $TERM in
  termite|*xterm*|rxvt|rxvt-unicode|rxvt-256color|rxvt-unicode-256color|(dt|k|E)term)
    precmd () {
      print -Pn "\e]0;[%n@%M][%~]%#\a"
	  RPROMPT=""
    } 
    preexec () { print -Pn "\e]0;[%n@%M][%~]%# ($1)\a" }
    ;;
  screen|screen-255color)
    precmd () { 
      print -Pn "\e]83;title \"$1\"\a" 
      print -Pn "\e]0;$TERM - (%L) [%n@%M]%# [%~]\a" 
	  RPROMPT=""
    }
    preexec () { 
      print -Pn "\e]83;title \"$1\"\a" 
      print -Pn "\e]0;$TERM - (%L) [%n@%M]%# [%~] ($1)\a" 
    }
    ;; 
esac

# Aliases
. ~/.alias
