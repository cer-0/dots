# dot(file)s

Personal configuration files.

## install

Managed with GNU `stow`. Clone the repository and symlink the desired
configurations to your `$HOME` directory. Example:

```
git clone --depth 1 https://github.com/cer-0/dots.git && cd dots
stow -t ~ vim tmux bash
```

## uninstall

Remove the symlinks of the previously linked files. Example:

```
stow -t ~ -D vim tmux bash
```

## list of main software

| :( :( :( :(  | software                          |
|--------------|-----------------------------------|
|distribution  |[Arch Linux](https://archlinux.org)|
|window manager|[`river`](https://github.com/riverwm/river)|
|terminal      |[`alacritty`](https://github.com/alacritty/alacritty)|
|launcher      |[`bemenu`](https://github.com/Cloudef/bemenu)|
|bar           |[`waybar`](https://github.com/Alexays/Waybar)|
|notifications |[`mako`](https://github.com/emersion/mako)|
|file manager  |[`nnn`](https://github.com/jarun/nnn)|
|editor 1      |[`nvim`](https://github.com/neovim/neovim)|
|editor (?) 2  |[`(doom) emacs`](https://github.com/doomemacs/doomemacs)|
|multiplexer   |[`tmux`](https://github.com/tmux/tmux)|
|music server  |[`mpd`](https://github.com/MusicPlayerDaemon/MPD)|
|music player  |[`ncmpcpp`](https://github.com/ncmpcpp/ncmpcpp)|
|pdf reader    |[`zathura`](https://git.pwmt.org/pwmt/zathura)|
|image viewer  |[`imv`](https://sr.ht/~exec64/imv/)|
|browser       |`firefox`|
|colorscheme   |[gruvbox-material](https://github.com/sainnhe/gruvbox-material)|

### dependencies

Check the [dependencies wiki](https://github.com/cer-0/dots/wiki/Dependencies) page.
