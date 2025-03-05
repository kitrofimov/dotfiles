![preview](preview.png)

# Software
- **WM**: Hyprland
- **Shell**: `bash`
- **Terminal**: `alacritty`
- **Bar**: `waybar`
- **Application launcher**: `rofi` (Wayland fork)
- **Image viewer**: `imv`
- **Screenshots**: `grim` + `slurp` + `satty`
- **Color picker**: `hyprpicker`
- **"pywal"**: `wallust`

# Installation
Assuming you use `bash`:
```bash
echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"' >> $HOME/.bashrc
source ~/.bashrc
echo ".dotfiles" >> .gitignore
git clone --bare https://www.github.com/kitrofimov/dotfiles.git $HOME/.dotfiles
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

