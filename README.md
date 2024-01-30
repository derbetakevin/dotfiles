[![wakatime](https://wakatime.com/badge/user/682e2c58-c624-4d98-8b0b-67a56585cdd2/project/a7a422e2-0a25-4e1f-9939-daba15cfaa4a.svg)](https://wakatime.com/badge/user/682e2c58-c624-4d98-8b0b-67a56585cdd2/project/a7a422e2-0a25-4e1f-9939-daba15cfaa4a)

<h1 align="center">Der Beta Kevin’s dotfiles</h1>

My compilation of configuration files, and more. Feel free to poke around and if you have any ideas or improvements, let me know via a merge request.

### Tutorials
* [Discord Screen Share on Wayland](https://github.com/derbetakevin/dotfiles-old/wiki/Discord-Screen-Share-on-Wayland)
* [QT programs on Arch in Dark Mode](https://github.com/derbetakevin/dotfiles-old/wiki/QT-programs-on-Arch-in-Dark-Mode)

## nixos-flakes
My Flake-Configuration for NixOS

### My Personal Computers
- Acer Travelmate 5760
- AMD Ryzen 5 2400G with MSI B450 A-PRO

### Available DE/WM
#### Desktop Environments
- [GNOME](/nixos/pkgs/gnome/default.nix) and [Games](/nixos/pkgs/gnome/games.nix)
- [KDE Plasma](/nixos/pkgs/kde/default.nix) and [Games](/nixos/pkgs/kde/games.nix)
- Xfce4 (TODO)
#### Window Managers
- Awesome (TODO)
- [Hyprland](/nixos/pkgs/hyprland/default.nix)
- Wayfire (TODO)

<small>All about Flakes -> https://nixos.wiki/wiki/Flakes<br>Thanks to [JerrySM64](https://github.com/JerrySM64) and the [NixOS Foundation](https://nixos.org/community/index.html)</small>

## Configurations
|Application|Where?|Done?|
|-|-|-|
|[Alacritty](https://alacritty.org/)|[configurations/alacritty/alacritty.yml](configurations/alacritty/alacritty.yml)|✅|
|[Conky](https://github.com/brndnmtthws/conky)|[configurations/conky/conky.conf](configurations/conky/conky.conf)|✅|
|[Fastfetch](https://github.com/LinusDierheimer/fastfetch)|[configurations/fastfetch/config.jsonc](configurations/fastfetch/config.jsonc)|✅|
|[Neofetch](https://github.com/dylanaraps/neofetch)|[configurations/neofetch/config.conf](configurations/neofetch/config.conf)|✅|
### Shells
|Shell|Full Name Shell|Where?|Done?|
|-|-|-|-|
|[bash](https://www.gnu.org/software/bash/)|Bourne-again shell|[configurations/bash/.bashrc](configurations/bash/.bashrc)|✅|
|[elvish](https://elv.sh/)|Expressive Programming Language<br>+  Versatile Interactive Shell||❌|
|[fish](https://fishshell.com/)|the friendly interactive shell|[configurations/fish/config.fish](configurations/fish/config.fish)|✅|
|[nu](https://www.nushell.sh/)|Nushell||❌|
|[oils](https://www.oilshell.org/)|Oilshell||❌|
|[pwsh](https://microsoft.com/powershell)|PowerShell||❌|
|[zsh](https://www.zsh.org/)|Z shell|[configurations/zsh/.zshrc](configurations/zsh/.zshrc)|✅|

## Others
* [XWayland Video Bridge Quick Setup](https://github.com/JerrySM64/Xwayland-Video-Bridge-Quick-Setup)