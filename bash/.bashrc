###############
#  ~/.bashrc  #
###############

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# Source me!
source $HOME/.profile
# Do not add to history duplicated commands
export HISTCONTROL=ignoredups
# Auto cd
shopt -s autocd
# Auto line wrap on window resize
shopt -s checkwinsize
# vi
# set -o vi

#########
#  tty  #
#########

# [ "$(tty)" == "/dev/tty{1,2,3,4,5,6}" ] && setfont /usr/share/kbd/consolefonts/Lat2-Terminus16.psfu.gz
# setfont /usr/share/kbd/consolefonts/gr928-8x16-thin.psfu.gz
# setfont /usr/share/kbd/consolefonts/Lat2-Terminus16.psfu.gz


###########
#  alias  #
###########

alias esx='exec startx'
alias sx='startx'
alias ls='ls --color=auto'
alias ll='ls -lsh'
alias la='ls -a'
alias mkd='mkdir -p'
alias f='find . -iname'
alias fr='find / -iname'
alias v='vim'
alias g='git'
alias gdb='gdb -q'
alias gdbn='gdb -q -n'
alias py='python -q'
alias free='free -h'
alias p='sudo pacman'
alias xo='xdg-open'
alias c='clear'
alias t='tree -L 1'
alias irc='irssi --home=~/.config/irssi'
alias irssi='irssi --home=~/.config/irssi'
