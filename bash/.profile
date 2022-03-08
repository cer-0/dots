export                                    \
PS1='\W > '                               \
EDITOR=nvim                               \
BROWSER=/usr/bin/firefox                  \
LESSHISTFILE=/dev/null                    \
GEM_HOME="$(ruby -e 'puts Gem.user_dir')" \
BAT_THEME=ansi

export PATH=$HOME/.local/bin:$GEM_HOME/bin:$PATH
