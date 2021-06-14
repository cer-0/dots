#### dotfiles

![1](./.img/1.png)

##### install

Managed with GNU `stow`.

Clone the repository and symlink programs to the `$HOME` directory. Example:

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
|window manager|`bspwm`|
|terminal      |`alacritty`|
|launcher      |`rofi`|
|panel/bar     |[`lemonbar-xft`](https://github.com/krypt-n/bar)|
|notifications |`dunst`|
|file manager  |`nnn` (and `thunar` sometimes)|
|editor        |`nvim`|
|music player  |`ncmpcpp` (`mpd` client)|
|multiplexer   |`tmux`|
|reader        |`zathura`|
|image viewer  |`feh`|
|compositor    |`picom`|
|browser       |`firefox`|
|fonts         |[scientifica](https://github.com/NerdyPepper/scientifica), [lemon](https://github.com/cmvnd/fonts) and [siji](https://github.com/stark/siji) as icons|
|colorscheme   |[onedark](https://github.com/joshdick/onedark.vim)|
|gtk theme     |[arc](https://github.com/jnsh/arc-theme)|
|gtk icons     |[arc](https://github.com/horst3180/arc-icon-theme) or [boston](https://github.com/heychrisd/Boston-Icons)|
|screen locker |a fork of [`slock`](https://github.com/cer-0/suckless/tree/iceberg/slock)|

##### dependencies:

Check the [dependencies wiki](https://github.com/cer-0/dots/wiki/Dependencies) page.

![2](./.img/2.png)
`tmux`, `nvim` and `feh`.
