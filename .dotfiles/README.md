# dotfiles

My dotfiles for `i3wm`, `bash`, `rofi`, `polybar`, `nvim` and more. See https://wiki.archlinux.org/title/Dotfiles for details of how this repository is organized.

![screenshot](screenshot.png)

Usage:
```bash
git clone --bare https://www.github.com/fahlerile/dotfiles $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

