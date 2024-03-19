export                   \
PS1='\W > '              \
EDITOR=nvim              \
BROWSER=/usr/bin/firefox \
TERMCMD="alacritty -e"   \
TERMINAL="alacritty -e"  \
BAT_THEME=ansi           \
LESSHISTFILE=/dev/null   \
BEMENU_OPTS='--ignorecase
  --no-touch
  --line-height 26
  --hp 10
  --fn "JetBrains Mono 10"
  --tb #1d2021
  --tf #89b482
  --fb #282828
  --ff #d4be98
  --cb #282828
  --cf #d4be98
  --nb #1d2021
  --nf #928374
  --hb #504945
  --hf #d4be98
  --ab #1d2021
  --af #928374'          \
QT_QPA_PLATFORM=wayland  \
QT_WAYLAND_DISABLE_WINDOWDECORATION="1"

export PATH=$HOME/.local/bin:$PATH

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec river
    # export _JAVA_AWT_WM_NONREPARENTING=1
fi
