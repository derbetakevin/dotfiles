[![wakatime](https://wakatime.com/badge/user/682e2c58-c624-4d98-8b0b-67a56585cdd2/project/a7a422e2-0a25-4e1f-9939-daba15cfaa4a.svg)](https://wakatime.com/badge/user/682e2c58-c624-4d98-8b0b-67a56585cdd2/project/a7a422e2-0a25-4e1f-9939-daba15cfaa4a)
![GitHub last commit](https://img.shields.io/github/last-commit/derbetakevin/dotfiles)
![GitHub commit activity](https://img.shields.io/github/commit-activity/w/derbetakevin/dotfiles)
![GitHub repo size](https://img.shields.io/github/repo-size/derbetakevin/dotfiles)
![GitHub top language](https://img.shields.io/github/languages/top/derbetakevin/dotfiles)
![GitHub License](https://img.shields.io/github/license/derbetakevin/dotfiles)


<h1 align="center">Der Beta Kevin’s dotfiles</h1>

My compilation of configuration files, and more. Feel free to poke around and if you have any ideas or improvements, let me know via a [merge request](https://github.com/derbetakevin/dotfiles/pulls).

## ❄️ nixos-flakes ❄️
> [!IMPORTANT]
> Flakes are an [experimental feature](https://nixos.org/manual/nix/stable/contributing/experimental-features.html) of the Nix package manager.

> [!NOTE]
> <details>
> <summary>Why NixOS Unstable?</summary>
> 
> NixOS hardly breaks at all unlike Arch Linux and the unstable packages are more up to date and [have the largest Linux repository of all distros](https://repology.org/repositories/statistics/total).
> 
> [![Repository status](https://repology.org/badge/repository-big/nix_unstable.svg?header=nixpkgs+unstable)](https://repology.org/repository/nix_unstable)
> [![Repository status](https://repology.org/badge/repository-big/nix_stable_23_11.svg?header=nixpkgs+stable+23.11)](https://repology.org/repository/nix_stable_23_11)
> [![Repository status](https://repology.org/badge/repository-big/nix_stable_23_05.svg?header=nixpkgs+stable+23.05)](https://repology.org/repository/nix_stable_23_05)
> [![Repository status](https://repology.org/badge/repository-big/nix_stable_22_11.svg?header=nixpkgs+stable+22.11)](https://repology.org/repository/nix_stable_22_11)
> [![Repository status](https://repology.org/badge/repository-big/nix_stable_22_05.svg?header=nixpkgs+stable+22.05)](https://repology.org/repository/nix_stable_22_05)
> [![Repository status](https://repology.org/badge/repository-big/arch.svg?header=Arch)](https://repology.org/repository/arch)
> [![Repository status](https://repology.org/badge/repository-big/aur.svg?header=AUR)](https://repology.org/repository/aur)
> [![Repository status](https://repology.org/badge/repository-big/debian_12.svg?header=Debian+12)](https://repology.org/repository/debian_12)
> [![Repository status](https://repology.org/badge/repository-big/fedora_39.svg?header=Fedora+39)](https://repology.org/repository/fedora_39)
> [![Repository status](https://repology.org/badge/repository-big/ubuntu_24_04.svg?header=Ubuntu+24.04)](https://repology.org/repository/ubuntu_24_04)
> </details>

My Flake-Configuration for NixOS with [Home-Manager](https://github.com/nix-community/home-manager)

### 🖥️ My Personal Computers 🖥️
- [Acer Travelmate 5760](https://en.wikipedia.org/wiki/Acer_TravelMate) | `acertravelmate`
- [AMD Ryzen 5 2400G](https://www.amd.com/en/product/7221) with [MSI B450 A-PRO](https://us.msi.com/Motherboard/B450-A-PRO/Specification) | `amdryzen`


### 🛠️ Install 🛠️
```bash
git clone https://github.com/derbetakevin/dotfiles
cd dotfiles
nix-shell -p nixFlakes
sudo nixos-install --flake .#hostname
```
### ♻️ Rebuild ♻️
- [Standalone](https://nixos.wiki/wiki/Nixos-rebuild): `sudo nixos-rebuild switch --flake $FLAKE#hostname`
- [nh (yet-another-nix-helper)](https://github.com/viperML/nh): `nh os switch --nom --hostname hostname` or with `--ask`
- Home-Manager only: `home-manager switch -f $FLAKE/home-manager/hosts/hostname/default.nix`
#### 🔁 With updates 🔁
- Standalone: `cd $FLAKE ; sudo nixos-rebuild switch --upgrade --flake $FLAKE#hostname`
- nh (yet-another-nix-helper): `nh os switch --nom --update --hostname hostname` or with `--ask`

### 📋 Available DE/WM 📋
#### 🖱️ Desktop Environments 🖱️
- [ ] Cinnamon [![nixpkgs unstable package](https://repology.org/badge/version-for-repo/nix_unstable/cinnamon-desktop.svg)](https://repology.org/project/cinnamon-desktop/versions)
- [X] [GNOME](/nixos/pkgs/gnome/default.nix) [![nixpkgs unstable package](https://repology.org/badge/version-for-repo/nix_unstable/gnome-shell.svg)](https://repology.org/project/gnome-shell/versions) 
  - [X] [GNOME Games](/nixos/pkgs/gnome/games.nix)
- [X] [KDE Desktop (kwin)](/nixos/pkgs/kde/default.nix) [![nixpkgs unstable package](https://repology.org/badge/version-for-repo/nix_unstable/kwin.svg)](https://repology.org/project/kwin/versions) 
  - [X] [KDE Games](/nixos/pkgs/kde/games.nix)
- [ ] Mate [![nixpkgs unstable package](https://repology.org/badge/version-for-repo/nix_unstable/mate-desktop.svg)](https://repology.org/project/mate-desktop/versions)
- [ ] Xfce4 [![nixpkgs unstable package](https://repology.org/badge/version-for-repo/nix_unstable/xfce4-session.svg)](https://repology.org/project/xfce4-session/versions)
#### 🪟 Window Managers 🪟
- [ ] Awesome [![nixpkgs unstable package](https://repology.org/badge/version-for-repo/nix_unstable/awesome.svg)](https://repology.org/project/awesome/versions)
- [X] [Hyprland](/nixos/pkgs/hyprland/default.nix) [![nixpkgs unstable package](https://repology.org/badge/version-for-repo/nix_unstable/hyprland.svg)](https://repology.org/project/hyprland/versions)
- [ ] Wayfire [![nixpkgs unstable package](https://repology.org/badge/version-for-repo/nix_unstable/wayfire.svg)](https://repology.org/project/wayfire/versions)

<small>All about Flakes -> https://nixos.wiki/wiki/Flakes<br>Thanks to [JerrySM64](https://github.com/JerrySM64) and the [NixOS Foundation](https://nixos.org/community/index.html)</small>

## 🔧 Configurations 🔧
|Application|Release|Where?|Done?|
|-|-|-|-|
|[Alacritty](https://alacritty.org/)|[![latest packaged version(s)](https://repology.org/badge/latest-versions/alacritty.svg)](https://repology.org/project/alacritty/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/alacritty.svg)](https://repology.org/project/alacritty/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/alacritty.svg)](https://repology.org/project/alacritty/versions)</details>|[configurations/alacritty/alacritty.yml](configurations/alacritty/alacritty.yml)|✅|
|[btop](https://github.com/aristocratos/btop)|[![latest packaged version(s)](https://repology.org/badge/latest-versions/btop.svg)](https://repology.org/project/btop/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/btop.svg)](https://repology.org/project/btop/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/btop.svg)](https://repology.org/project/btop/versions)</details>||❌|
|[Conky](https://github.com/brndnmtthws/conky)|[![latest packaged version(s)](https://repology.org/badge/latest-versions/conky.svg)](https://repology.org/project/conky/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/conky.svg)](https://repology.org/project/conky/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/conky.svg)](https://repology.org/project/conky/versions)</details>|[configurations/conky/conky.conf](configurations/conky/conky.conf)|✅|
|[Fastfetch](https://github.com/LinusDierheimer/fastfetch)|[![latest packaged version(s)](https://repology.org/badge/latest-versions/fastfetch.svg)](https://repology.org/project/fastfetch/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/fastfetch.svg)](https://repology.org/project/fastfetch/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/fastfetch.svg)](https://repology.org/project/fastfetch/versions)</details>|[configurations/fastfetch/config.jsonc](configurations/fastfetch/config.jsonc)|✅|
|[Hyfetch](https://github.com/hykilpikonna/hyfetch)|[![latest packaged version(s)](https://repology.org/badge/latest-versions/hyfetch.svg)](https://repology.org/project/hyfetch/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/hyfetch.svg)](https://repology.org/project/hyfetch/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/hyfetch.svg)](https://repology.org/project/hyfetch/versions)</details>||❌|
|[Kitty](https://sw.kovidgoyal.net/kitty/)|[![latest packaged version(s)](https://repology.org/badge/latest-versions/kitty.svg)](https://repology.org/project/kitty/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/kitty.svg)](https://repology.org/project/kitty/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/kitty.svg)](https://repology.org/project/kitty/versions)</details>|[configurations/kitty/kitty.conf](configurations/kitty/kitty.conf)|✅|
|[Neofetch](https://github.com/dylanaraps/neofetch)|[![latest packaged version(s)](https://repology.org/badge/latest-versions/neofetch.svg)](https://repology.org/project/neofetch/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/neofetch.svg)](https://repology.org/project/neofetch/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/neofetch.svg)](https://repology.org/project/neofetch/versions)</details>|[configurations/neofetch/config.conf](configurations/neofetch/config.conf)|✅|
|[Rofi](https://davatorium.github.io/rofi/)|[![latest packaged version(s)](https://repology.org/badge/latest-versions/rofi.svg)](https://repology.org/project/rofi/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/rofi.svg)](https://repology.org/project/rofi/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/rofi.svg)](https://repology.org/project/rofi/versions)</details>|[configurations/rofi/config.rasi](/configurations/rofi/config.rasi)|✅|
|[Starship](https://starship.rs/)|[![latest packaged version(s)](https://repology.org/badge/latest-versions/starship.svg)](https://repology.org/project/starship/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/starship.svg)](https://repology.org/project/starship/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/starship.svg)](https://repology.org/project/starship/versions)</details>|[configurations/starship.toml](/configurations/starship.toml)|✅|
|[SwayNotificationCenter](https://github.com/ErikReider/SwayNotificationCenter)|[![latest packaged version(s)](https://repology.org/badge/latest-versions/sway-notification-center.svg)](https://repology.org/project/sway-notification-center/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/sway-notification-center.svg)](https://repology.org/project/sway-notification-center/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/sway-notification-center.svg)](https://repology.org/project/sway-notification-center/versions)</details>|[configurations/swaync/config.json](/configurations/swaync/config.json)|✅|
|[Waybar](https://github.com/Alexays/Waybar)|[![latest packaged version(s)](https://repology.org/badge/latest-versions/waybar.svg)](https://repology.org/project/waybar/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/waybar.svg)](https://repology.org/project/waybar/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/waybar.svg)](https://repology.org/project/waybar/versions)</details>|[configurations/waybar/config](/configurations/waybar/config)|✅|
### ⌨️ Shells ⌨️
|Shell|Full Name Shell|Release|Where?|Done?|
|-|-|-|-|-|
|[bash](https://www.gnu.org/software/bash/)|Bourne-again shell|[![latest packaged version(s)](https://repology.org/badge/latest-versions/bash.svg)](https://repology.org/project/bash/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/bash.svg)](https://repology.org/project/bash/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/bash.svg)](https://repology.org/project/bash/versions)</details>|[configurations/bash/.bashrc](configurations/bash/.bashrc)|✅|
|[elvish](https://elv.sh/)|Expressive Programming Language<br>+  Versatile Interactive Shell|[![latest packaged version(s)](https://repology.org/badge/latest-versions/elvish.svg)](https://repology.org/project/elvish/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/elvish.svg)](https://repology.org/project/elvish/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/elvish.svg)](https://repology.org/project/elvish/versions)</details>||❌|
|[fish](https://fishshell.com/)|the friendly interactive shell|[![latest packaged version(s)](https://repology.org/badge/latest-versions/fish.svg)](https://repology.org/project/fish/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/fish.svg)](https://repology.org/project/fish/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/fish.svg)](https://repology.org/project/fish/versions)</details>|[configurations/fish/config.fish](configurations/fish/config.fish)|✅|
|[nu](https://www.nushell.sh/)|Nushell|[![latest packaged version(s)](https://repology.org/badge/latest-versions/nushell.svg)](https://repology.org/project/nushell/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/nushell.svg)](https://repology.org/project/nushell/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/nushell.svg)](https://repology.org/project/nushell/versions)</details>||❌|
|[oils](https://www.oilshell.org/)|Oilshell|[![latest packaged version(s)](https://repology.org/badge/latest-versions/oils.svg)](https://repology.org/project/oils/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/oils.svg)](https://repology.org/project/oils/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/oils.svg)](https://repology.org/project/oils/versions)</details>||❌|
|[pwsh](https://microsoft.com/powershell)|PowerShell|[![latest packaged version(s)](https://repology.org/badge/latest-versions/powershell.svg)](https://repology.org/project/powershell/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/powershell.svg)](https://repology.org/project/powershell/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/powershell.svg)](https://repology.org/project/powershell/versions)</details>||❌|
|[zsh](https://www.zsh.org/)|Z shell|[![latest packaged version(s)](https://repology.org/badge/latest-versions/zsh.svg)](https://repology.org/project/zsh/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/zsh.svg)](https://repology.org/project/zsh/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/zsh.svg)](https://repology.org/project/zsh/versions)</summary>|[configurations/zsh/.zshrc](configurations/zsh/.zshrc)|✅|
### 📦 Package Manager 📦
|Package Manager|Distro|Release|Where?|Done?|
|-|-|-|-|-|
|[apt](https://salsa.debian.org/apt-team/apt)|Debian<br>Ubuntu|[![latest packaged version(s)](https://repology.org/badge/latest-versions/apt.svg)](https://repology.org/project/apt/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/apt.svg)](https://repology.org/project/apt/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/apt.svg)](https://repology.org/project/apt/versions)</details>||❌|
|[dnf](https://dnf.readthedocs.io/en/latest/)|Fedora|[![latest packaged version(s)](https://repology.org/badge/latest-versions/dnf.svg)](https://repology.org/project/dnf/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/dnf.svg)](https://repology.org/project/dnf/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/dnf.svg)](https://repology.org/project/dnf/versions)</details>||❌|
|[nix](https://github.com/NixOS/nix)|NixOS|[![latest packaged version(s)](https://repology.org/badge/latest-versions/nix.svg)](https://repology.org/project/nix/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/nix.svg)](https://repology.org/project/nix/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/nix.svg)](https://repology.org/project/nix/versions)</details>||❌|
|[pacman](https://archlinux.org/pacman/)|Arch Linux|[![latest packaged version(s)](https://repology.org/badge/latest-versions/pacman-package-manager.svg)](https://repology.org/project/pacman-package-manager/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/pacman-package-manager.svg)](https://repology.org/project/pacman-package-manager/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/pacman-package-manager.svg)](https://repology.org/project/pacman-package-manager/versions)</details>|[configurations/pacman/pacman.conf](configurations/pacman/pacman.conf)|✅|
|[xbps](https://xbps-api-docs.voidlinux.org/)|Void Linux|[![latest packaged version(s)](https://repology.org/badge/latest-versions/xbps.svg)](https://repology.org/project/xbps/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/xbps.svg)](https://repology.org/project/xbps/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/xbps.svg)](https://repology.org/project/xbps/versions)</details>||❌|
|[zypper](https://en.opensuse.org/Portal:Zypper)|openSUSE|[![latest packaged version(s)](https://repology.org/badge/latest-versions/zypper.svg)](https://repology.org/project/zypper/versions)<details><summary>[![Packaging status](https://repology.org/badge/tiny-repos/zypper.svg)](https://repology.org/project/zypper/versions)</summary>[![Packaging status](https://repology.org/badge/vertical-allrepos/zypper.svg)](https://repology.org/project/zypper/versions)</details>||❌|


## 📊 Stats 📊
- https://repo-tracker.com/r/gh/derbetakevin/dotfiles
### 🌟 Star History 🌟
<a href="https://star-history.com/#derbetakevin/dotfiles&Date">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=derbetakevin/dotfiles&type=Date&theme=dark" />
    <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=derbetakevin/dotfiles&type=Date" />
    <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=derbetakevin/dotfiles&type=Date" />
  </picture>
</a>

## Others
* [XWayland Video Bridge Quick Setup](https://github.com/JerrySM64/Xwayland-Video-Bridge-Quick-Setup)
### Tutorials
* [Discord Screen Share on Wayland](https://github.com/derbetakevin/dotfiles-old/wiki/Discord-Screen-Share-on-Wayland)
* [QT programs on Arch in Dark Mode](https://github.com/derbetakevin/dotfiles-old/wiki/QT-programs-on-Arch-in-Dark-Mode)