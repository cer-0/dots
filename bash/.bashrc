#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Additional environment variables
source $HOME/.profile

# Do not add duplicated commands to history
export HISTCONTROL=ignoredups

# Write only the name of a directory to automatically cd into it
shopt -s autocd

# Auto wrap lines on window resize
shopt -s checkwinsize

# Bash arguments|commands completion, requires bash-completion
. /usr/share/bash-completion/bash_completion

# vi mode in the prompt
# set -o vi

# aliases
alias F='find / -iname' \
    f='find . -iname' \
    free='free -h' \
    g='git' \
    gdb='gdb -q' \
    gdbn='gdb -q -n' \
    irc='irssi --home=~/.config/irssi' \
    irssi='irssi --home=~/.config/irssi' \
    la='ls -a' \
    ll='ls -lsh' \
    ls='ls --color=auto' \
    mkd='mkdir -p' \
    n='nnn -C -d' \
    p='sudo pacman' \
    py='python -q' \
    sy='sudo systemctl' \
    sx='exec startx' \
    t='tree -L 1' \
    v='nvim' \
    xo='xdg-open'
