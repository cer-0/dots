#### dotfiles

Wayland setup.

##### install

Managed with GNU `stow`.

Clone the repository and symlink programs to your `$HOME` directory. Example:

```
$ stow -t ~ vim tmux bash
```

##### uninstall

Remove the symlinks. Example:

```
$ stow -t ~ -D vim tmux bash
```

##### stuff i use

| :( :( :( :(  | software                          |
|--------------|-----------------------------------|
|distribution  |[Arch Linux](https://archlinux.org)|
|window manager|`sway`|
|terminal      |`alacritty`|
|launcher      |`wofi`|
|panel/bar     |[`waybar`](https://github.com/krypt-n/bar)|
|notifications |`mako`|
|file manager  |`nnn`|
|editor        |`nvim`|
|music player  |`ncmpcpp` (`mpd` client)|
|multiplexer   |`tmux`|
|reader        |`zathura`|
|image viewer  |`imv`|
|browser       |`firefox`|
|colorscheme   |[gruvbox-material](https://github.com/sainnhe/gruvbox-material)|

##### dependencies:

Check the [dependencies wiki](https://github.com/cer-0/dots/wiki/Dependencies) page.
