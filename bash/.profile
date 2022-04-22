export                                    \
PS1='\W > '                               \
EDITOR=nvim                               \
BROWSER=/usr/bin/firefox                  \
LESSHISTFILE=/dev/null                    \
GEM_HOME="$(ruby -e 'puts Gem.user_dir')" \
BAT_THEME=ansi                            \
QT_QPA_PLATFORM=wayland                   \
QT_WAYLAND_DISABLE_WINDOWDECORATION="1"   \
MOZ_ENABLE_WAYLAND=1

export PATH=$HOME/.local/bin:$GEM_HOME/bin:$PATH

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec sway
    # export _JAVA_AWT_WM_NONREPARENTING=1
fi
