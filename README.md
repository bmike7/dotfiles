# dotfiles

make sure you have [yadm](https://yadm.io/) installed

install (brew taps & casks, ...):

```yadm bootstrap```


## Preview

![dotfiles setup](./dotfiles_preview.png "Dotfiles setup")

This shows you my current custom setup I'm rocking:

- At the top, a minimal [SketchyBar](https://github.com/FelixKratz/SketchyBar)
- [AeroSpace](https://github.com/nikitabobko/AeroSpace) for MacOS window management
- [Ghostty](https://ghostty.org) as the terminal
    - You gotta love ligatures (not every terminal has this)
- [Fish](https://fishshell.com) as my shell
- [Neovim](https://neovim.io) as a text-based editor
- [TMux](https://github.com/tmux/tmux/wiki) for terminal window management

With these, I almost never have to leave my keyboard or look for apps on my
Mac, since the ones I use often have a shortcut attached to them.

To really nerd out, I custom-built my keyboard optimized for navigating
all these tools. To give you an idea, it is the
[Kyria](https://splitkb.com/products/kyria-rev3?srsltid=AfmBOorAF2rSaZMGfkKWPGCUrkkkOBXaxIeZKDZtUjMBK-yGTJwR3TRZ)
in a The Lord of the Rings theme.


## TMUX

Initially `TMUX` wasn't straightforward to install
and boostrap plugins and configure them.

Make sure [tmx](https://github.com/tmux-plugins/tpm) is installed,
by following the installation instructions:

1. Clone the repository
2. Add tpm to tmux config file
3. Source it (`tmux source ...`)
4. `prefix+I`: installs configured plugins

(Tip: if the prefix isn't working, then it could be the case
a system keyboad-binding overwrites it.)
