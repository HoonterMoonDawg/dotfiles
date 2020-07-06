# Standard and additional keybindings
#
# Find the key with: showkey -a
#
#   ctrl + u     : clear line
#   ctrl + w     : delete word backward
#   alt  + d     : delete word
#   ctrl + a     : move to beginning of line
#   ctrl + e     : move to end of line (e for end)
#   alt/ctrl + f : move to next word (f for forward)
#   alt/ctrl + b : move to previous word (b for backward)
#   ctrl + d     : delete char at current position (d for delete)
#   ctrl + k     : delete from character to end of line
#   alt  + .     : cycle through previous args
zmodload -i zsh/complist

# Emacs bindings 
bindkey -e

# Return accepts current selection
bindkey -M menuselect '^M' .accept-line

# alt-x : insert last command result
zmodload -i zsh/parameter
insert-last-command-output() {
    LBUFFER+="$(eval $history[$((HISTCMD-1))])"
}

zle -N insert-last-command-output
bindkey '^[x' insert-last-command-output

# Ctrl+left/right: Move by word
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

