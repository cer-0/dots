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

- distribution: [arch](https://archlinux.org)
- window manager: `bspwm`
- terminal: `alacritty`
- launcher: `rofi`
- panel/bar: [`lemonbar-xft`](https://github.com/krypt-n/bar)
- notifications: `dunst`
- file manager: `nnn` (and `thunar` sometimes)
- editor: `vim`
- music player: `ncmpcpp` (as a frontend for `mpd`)
- multiplexer: `tmux`
- reader: `zathura`
- image viewer: `feh`
- compositor: `picom` (fork of `compton`)
- browser: `firefox`
- fonts: [dina](https://www.dcmembers.com/jibsen/download/61) [cozette](https://github.com/slavfox/Cozette) and [siji](https://github.com/stark/siji) as icons
- colorscheme: [iceberg](https://github.com/cocopon/iceberg.vim)
- gtk theme: adwaita
- gtk icons: [boston](https://github.com/heychrisd/Boston-Icons)
- screen locker: my fork of [`slock`](https://github.com/cer-0/suckless/tree/iceberg/slock)

##### more screenshots:

![2](./.img/2.png)
`vim`, `chicken-csi` and `zathura` showing The Litttle Schemer.

![3](./.img/3.png)
`rofi`.
