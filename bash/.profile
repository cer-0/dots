PATH=$HOME/.local/bin:$(ruby -e 'puts Gem.user_dir')/bin:$PATH

export                         \
PS1='\W > '                    \
EDITOR=nvim                    \
BROWSER=/usr/bin/firefox       \
LESSHISTFILE=/dev/null         \
BAT_THEME=OneHalfDark
