![preview](preview.png)

# Software
- **WM**: Hyprland
- **Shell**: `bash`
- **Terminal**: `alacritty`
- **Bar**: `waybar`
- **Application launcher**: `rofi` (Wayland fork)
- **File manager**: `thunar`
- **Image viewer**: `imv`
- **Screenshots**: `grim` + `slurp` + `satty`
- **Color picker**: `hyprpicker`
- **"pywal"**: `wallust`
- **Notification daemon**: `mako`
- **Day/night color correction**: `wlsunset`
- **Wallpaper daemon**: `swww`
- **GTK theme selector**: `nwg-look`
- **Policy kit**: `polkit-gnome`
- **Clipboard history**: `cliphist`

See full package lists (essential, optional) in [`.github`](.github) directory.

# Installation
Clone and checkout the repo:
```bash
echo ".dotfiles" >> .gitignore
git clone --bare https://www.github.com/kitrofimov/dotfiles.git $HOME/.dotfiles
git --git-dir=~/.dotfiles --work-tree=~ checkout
dotfiles config --local status.showUntrackedFiles no
```

Install essential packages; you may also install optional packages the same way ([`packages-optional.txt`](packages-optional.txt) and [`packages-optional-aur.txt`](packages-optional-aur.txt)). Some "optional" packages require enabling `multilib` repository (e.g. `steam`). [`packages-personal.txt`](packages-personal.txt) contains packages specific for *my* machine (AMD CPU + AMD GPU), so do not pay close attention to this file.
```bash
sudo pacman -S --needed - < ~/.github/packages-essential.txt
yay -S --needed - < ~/.github/packages-essential-aur.txt
```

Launch a Hyprland session, set a wallpaper using `Win + Shift + W` keybind and reboot. Enjoy!
