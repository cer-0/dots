PATH=$HOME/.local/bin:$(ruby -e 'puts Gem.user_dir')/bin:$PATH

export                    \
PS1='\W > '               \
EDITOR=vim                \
BROWSER=/usr/bin/firefox  \
QT_QPA_PLATFORMTHEME=gtk3 \
LESSHISTFILE=/dev/null
