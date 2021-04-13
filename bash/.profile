PATH=$HOME/.local/bin:$(ruby -e 'puts Gem.user_dir')/bin:$PATH

export                         \
PS1='\W > '                    \
EDITOR=nvim                    \
BROWSER=/usr/bin/firefox       \
LESSHISTFILE=/dev/null         \
TDESKTOP_USE_GTK_FILE_DIALOG=1 \
DESKTOP_APP_I_KNOW_ABOUT_GTK_INCOMPATIBILITY=1
