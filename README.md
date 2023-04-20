# dotfiles

Personal configuration files with "hybrid" mode (laptop/dock) in mind.

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
|window manager|`sway`|
|terminal      |`alacritty`|
|launcher      |`wofi`|
|bar           |[`waybar`](https://github.com/Alexays/Waybar)|
|notifications |`mako`|
|file manager  |`nnn`|
|editor        |`nvim`/(doom) `emacs`)|
|music player  |`ncmpcpp` (`mpd` client)|
|multiplexer   |`tmux`|
|reader        |`zathura`|
|image viewer  |`imv`|
|browser       |`firefox`|
|colorscheme   |[gruvbox-material](https://github.com/sainnhe/gruvbox-material)|

### dependencies

Check the [dependencies wiki](https://github.com/cer-0/dots/wiki/Dependencies) page.
