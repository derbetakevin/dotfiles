## Set values
# Hide welcome message
set fish_greeting
set VIRTUAL_ENV_DISABLE_PROMPT "1"
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

## Export variable need for qt-theme
if type "qtile" >> /dev/null 2>&1
   set -x QT_QPA_PLATFORMTHEME "qt5ct"
end

# Set settings for https://github.com/franciscolourenco/done
set -U __done_min_cmd_duration 10000
set -U __done_notification_urgency_level low


## Environment setup
# Apply .profile: use this to put fish compatible .profile stuff in
if test -f ~/.fish_profile
  source ~/.fish_profile
end

# Add ~/.local/bin to PATH
if test -d ~/.local/bin
    if not contains -- ~/.local/bin $PATH
        set -p PATH ~/.local/bin
    end
end

# Add depot_tools to PATH
if test -d ~/Applications/depot_tools
    if not contains -- ~/Applications/depot_tools $PATH
        set -p PATH ~/Applications/depot_tools
    end
end


## Starship prompt
if status --is-interactive
   source ("/usr/bin/starship" init fish --print-full-init | psub)
end

## Functions
# Functions needed for !! and !$ https://github.com/oh-my-fish/plugin-bang-bang
function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end

if [ "$fish_key_bindings" = fish_vi_key_bindings ];
  bind -Minsert ! __history_previous_command
  bind -Minsert '$' __history_previous_command_arguments
else
  bind ! __history_previous_command
  bind '$' __history_previous_command_arguments
end

# Fish command history
function history
    builtin history --show-time='%F %T '
end

function backup --argument filename
    cp $filename $filename.bak
end

# Copy DIR1 DIR2
function copy
    set count (count $argv | tr -d \n)
    if test "$count" = 2; and test -d "$argv[1]"
	set from (echo $argv[1] | trim-right /)
	set to (echo $argv[2])
        command cp -r $from $to
    else
        command cp $argv
    end
end

# Flex
pfetch
echo "🐟🐟🐟 Fish macht Blub! 🐟🐟🐟"

# Replace ls with eza
alias ls='eza -al --color=always --group-directories-first --icons' # preferred listing
alias la='eza -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first --icons'  # long format
alias lt='eza -aT --color=always --group-directories-first --icons' # tree listing
alias l.="eza -a | egrep '^\.'"                                     # show only dotfiles

#Get confirmation prompt when dealing with files
alias cp='cp -i -v'
alias mv='mv -i -v'
alias rm='rm -i -v'

#Create folders the better way
alias mkdir='mkdir -pv'

# Common use
alias tarnow='tar -acf '
alias untar='tar -xvf '
alias wget='wget -c '
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#The universal package managers
alias flatin='flatpak install'
alias flatup='flatpak update'
alias flatrm='flatpak remove --delete-data' #Deinstallieren mit Datenlöschung
alias snapin='sudo snap install'
alias snapup='sudo snap refresh'
alias snaprm='sudo snap remove --purge' #Deinstallieren mit Datenlöschung

#View OS information
alias btw='neofetch'
alias btsw='fastfetch'
alias btscreenw='screenfetch'
alias uwu='uwufetch'
alias hy='hyfetch'

#View information about your hardware
alias hw='hwinfo --short'
alias raminfo='sudo dmidecode --type 17'
alias cpuinfo='sudo dmidecode --type 4'
alias mbinfo='sudo dmidecode --type 1'

#Sonstiges
alias logging='sudo journalctl -f'
alias please='sudo'
alias wetter='curl wttr.in/Nordenham'
alias vencord-installer='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

#--------OS-specific--------
#---Arch Linux---
#Fish Extensions
source /usr/share/doc/find-the-command/ftc.fish
#Package Manager
alias allpackages='exec pacman -Q | wc -l && echo Pacman && exec flatpak list | wc -l && echo Flatpak && exec snap list | wc -l && echo Snap'
alias pacin='sudo pacman -S --needed'
alias pacrein='sudo pacman -S'
alias pacrm='sudo pacman -Rns'
alias pac+rm='sudo pacman -Rcns'
alias pacclean='sudo pacman -Rns $(pacman -Qtdq)'
alias paruin='paru -S --needed'
alias parurein='paru -S'
alias parurm='paru -Rns'
alias paru+rm='paru -Rcns'
alias parup='paru -Syy'
alias big="expac -H M '%m\t%n' | sort -h | nl"     # Sort installed packages according to size in MB
alias gitpkg='pacman -Q | grep -i "\-git" | wc -l' # List amount of -git packages
alias lastpkg="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
#Updates
alias allupdate='sudo snap refresh --list && sudo snap refresh && flatpak update && paru'
alias updateall='sudo snap refresh --list && sudo snap refresh && flatpak update && paru'
alias byebyewiegehts='sudo snap refresh --list && sudo snap refresh && flatpak update && paru && reboot'
alias luckoff='sudo snap refresh --list && sudo snap refresh && flatpak update && paru && poweroff'

#---Fedora + RHEL---
#Package Manager
alias dnfin='sudo dnf install'
alias dnfrein='sudo dnf reinstall'
alias dnfrm='sudo dnf remove'
alias dnfclean='sudo dnf clean all'
alias rpmdb='sudo rpm --rebuilddb'
alias dnfsync='sudo dnf distro-sync'
#Updates
alias allupdate='flatpak update && sudo dnf update'
alias updateall='flatpak update && sudo dnf update'
alias byebyewiegehts='flatpak update && sudo dnf update && reboot'
alias luckoff='flatpak update && sudo dnf update && poweroff'

#---NixOS---
#Updates with Flakes on amdryzen
alias gitflake='cd /home/derbetakevin/Development/nixos-flakes ; git fetch origin ; git pull'
alias update='nix flake update /home/derbetakevin/Development/nixos-flakes && sudo nixos-rebuild switch --flake /home/derbetakevin/Development/nixos-flakes#amdryzen'
alias rebuild='sudo nixos-rebuild switch --flake /home/derbetakevin/Development/nixos-flakes#amdryzen'
alias genrm='sudo nix-env -p /nix/var/nix/profiles/system --delete-generations old && nix-collect-garbage -d && sudo nixos-rebuild switch --flake /home/derbetakevin/Development/nixos-flakes#amdryzen'
#Updates with Flakes on acertravelmate
alias gitflake='cd /home/derbetakevin/Development/nixos-flakes ; git fetch origin ; git pull'
alias update='nix flake update /home/derbetakevin/Development/nixos-flakes && sudo nixos-rebuild switch --flake /home/derbetakevin/Development/nixos-flakes#acertravelmate'
alias rebuild='sudo nixos-rebuild switch --flake /home/derbetakevin/Development/nixos-flakes#acertravelmate'
alias genrm='sudo nix-env -p /nix/var/nix/profiles/system --delete-generations old && nix-collect-garbage -d && sudo nixos-rebuild switch --flake /home/derbetakevin/Development/nixos-flakes#acertravelmate'
#Updates without Flakes
alias updateall='sudo nixos-rebuild switch --upgrade && nix-env --upgrade'
alias update='sudo nixos-rebuild switch --upgrade'
alias upgrade='sudo nixos-rebuild switch --upgrade'
alias rebuild='sudo nixos-rebuild switch'
alias genrm='sudo nix-env -p /nix/var/nix/profiles/system --delete-generations old && nix-collect-garbage -d && sudo nixos-rebuild switch'
#Other
alias conf='sudo vim /etc/nixos/configuration.nix'
set -x NIXOS_GENERATION (readlink /nix/var/nix/profiles/system)

#---openSUSE Tumbleweed---
#Package managers
alias zypin='sudo zypper install --details'
alias zypup='sudo zypper update --details'
alias zypdup='sudo zypper dup --details'
alias zyprm='sudo zypper remove --details'
alias zypse='sudo zypper search --details'
alias zypsegrep='sudo zypper search -i --details | grep'
alias zyprepos='sudo zypper repos --details'
alias zypref='sudo zypper refresh'
alias updates='bash /home/DerBetaKevin/OneDrive/Software/Linux/updates-opensuse.sh'
alias luckoff='sudo snap refresh --list && sudo snap refresh && flatpak update && sudo zypper dup && poweroff'
alias reboot='systemctl reboot'
alias poweroff='systemctl poweroff'

#---Ubuntu---
#Updates
alias aptup='sudo apt update && sudo apt dist-upgrade'
alias aptin='sudo apt install'
alias aptrm='sudo apt remove'
alias purge='sudo apt purge'
alias clean='sudo apt autoremove'
alias allupdate='sudo snap refresh && flatpak update && sudo apt update && sudo apt dist-upgrade'
alias updateall='sudo snap refresh && flatpak update && sudo apt update && sudo apt dist-upgrade'
alias byebyewiegehts='sudo snap refresh && flatpak update && sudo apt update && sudo apt dist-upgrade && reboot'
alias luckoff='sudo snap refresh && flatpak update && sudo apt update && sudo apt dist-upgrade && poweroff'
alias nalain='sudo nala install'
alias nalarm='sudo nala remove'
alias pkgin='rhino-pkg install'
alias updates='bash /home/derbetakevin/OneDrive/Software/Linux/updates-ubuntu.sh
