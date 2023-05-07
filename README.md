# dotfiles

make sure you have [yadm](https://yadm.io/) installed

install (brew taps & casks, ...):

```yadm bootstrap```

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
