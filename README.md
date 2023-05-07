# dotfiles

make sure you have [yadm](https://yadm.io/) installed

install (brew taps & casks, ...):

```yadm bootstrap```

## NVim

The nvim configuration is based on [NvChad](https://nvchad.com/).
Make sure to install it accordingly. The configuration in 
`.config/nvim/lua/custom` customises this setup.

## TMUX

For me nn the past, `TMUX` wasn't straightforward to install
and boostrap plugins and configure them.

Make sure [tmx](https://github.com/tmux-plugins/tpm) is installed,
by following the installation instructions:

1. Clone the repository
2. Add tpm to tmux config file
3. Source it (`tmux source ...`)
4. `prefix+I`: installs configured plugins

(Tip: if the prefix isn't working, then it could be the case
a system keyboad-binding overwrites it.)
