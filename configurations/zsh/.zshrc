# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt autocd nomatch
unsetopt beep extendedglob notify
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/DerBetaKevin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Flag more than one job at a time while compiling
if type nproc &>/dev/null; then   # GNU/Linux
	  export MAKEFLAGS="$MAKEFLAGS -j$(($(nproc)-1))"
  elif type sysctl -n hw.ncpu &>/dev/null; then   # macOS, FreeBSD
	    export MAKEFLAGS="$MAKEFLAGS -j$(($(sysctl -n hw.ncpu)-1))"
fi

###Shell Design###
eval "$(starship init zsh)"
#Flex
pfetch
alias pfetchin='git clone https://github.com/dylanaraps/pfetch.git && cd pfetch && sudo make install'

#PROMPT='%F{green}%n%f@%F{yellow}%m%f %F{yellow}%B%~%b%f %# '

# Keybindings

bindkey '^[[3~' delete-char                     # Key Del
bindkey '^[[5~' beginning-of-buffer-or-history  # Key Page Up
bindkey '^[[6~' end-of-buffer-or-history        # Key Page Down
bindkey '^[[1;3D' backward-word                 # Key Alt + Left
bindkey '^[[1;3C' forward-word                  # Key Alt + Right
bindkey '^[[H' beginning-of-line                # Key Home
bindkey '^[[F' end-of-line                      # Key End

# Ignore case-sensitivity when TAB completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

###ALIASES###

# Replace ls with exa
alias ls='exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.="exa -a | egrep '^\.'"                                     # show only dotfiles
alias ip="ip -color"

#Get confirmation prompt when dealing with files
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

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

#The package managers
alias flatin='flatpak install'
alias flatup='flatpak update'
alias flatrm='flatpak remove --delete-data' #Deinstallieren mit Datenlöschung
alias snapin='sudo snap install'
alias snapup='sudo snap refresh'
alias snaprm='sudo snap remove --purge' #Deinstallieren mit Datenlöschung
alias makepkg='makepkg -sci'
alias unlock='sudo rm /var/lib/pacman/db.lck'

#View OS information
alias btw='neofetch'
alias btsw='fastfetch'
alias btscreenw='screenfetch'
alias uwu='uwufetch'

#View information about your hardware
alias hw='hwinfo --short'
alias raminfo='sudo dmidecode --type 17'
alias cpuinfo='sudo dmidecode --type 4'
alias mbinfo='sudo dmidecode --type 1'

#Sonstiges
alias honeygain='sudo ~/.local/share/honeygain.sh'
alias logging='sudo journalctl -f'
alias please='sudo'

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

#--------OS-specific--------
#---Arch Linux---
#zsh Extensions
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/doc/find-the-command/ftc.zsh askfirst
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
#Updates
alias allupdate='sudo snap refresh --list && sudo snap refresh && flatpak update && paru'
alias updateall='sudo snap refresh --list && sudo snap refresh && flatpak update && paru'
alias byebyewiegehts='sudo snap refresh --list && sudo snap refresh && flatpak update && paru && reboot'
alias fuckoff='sudo snap refresh --list && sudo snap refresh && flatpak update && paru && poweroff'

#---Fedora + RHEL---
#zsh Extensions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
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
alias fuckoff='flatpak update && sudo dnf update && poweroff'

#---NixOS---
#zsh Extensions
source ~/.local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh #Manual install
source ~/.local/share/zsh-autosuggestions.zsh #Manual install
#Updates
alias updateall='sudo nixos-rebuild switch --upgrade && nix-env --upgrade'
alias update='sudo nixos-rebuild switch --upgrade'
alias upgrade='sudo nixos-rebuild switch --upgrade'
alias rebuild='sudo nixos-rebuild switch'
alias genrm='sudo nix-env -p /nix/var/nix/profiles/system --delete-generations old && nix-collect-garbage -d && sudo nixos-rebuild switch'
#Other
alias conf='sudo vim /etc/nixos/configuration.nix'
alias nix='neofetch'

#---openSUSE Tumbleweed---
#zsh Extensions
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#Package Manager
alias zypin='sudo zypper in --details'
alias zypup='sudo zypper up --details'
alias zypdup='sudo zypper dup --details'
alias zyprm='sudo zypper rm --details'
alias zypse='sudo zypper se'
alias zypsegrep='sudo zypper se -i | grep'
alias updates='bash /home/DerBetaKevin/HDD/OneDrive/Software/Linux/updates-opensuse.sh'
alias fuckoff='sudo snap refresh --list && sudo snap refresh && flatpak update && sudo zypper dup && poweroff'
alias reboot='systemctl reboot'
alias poweroff='systemctl poweroff'

#---Ubuntu Pro 16.04 ESM---
#zsh Extensions
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.local/share/zsh-autosuggestions.zsh #Manual install
#Updates
alias aptup='sudo apt update && sudo apt dist-upgrade'
alias aptin='sudo apt install'
alias aptrm='sudo apt remove'
alias purge='sudo apt purge'
alias clean='sudo apt autoremove'
#Updates
alias allupdate='sudo snap refresh && flatpak update && sudo apt update && sudo apt dist-upgrade'
alias updateall='sudo snap refresh && flatpak update && sudo apt update && sudo apt dist-upgrade'
alias byebyewiegehts='sudo snap refresh && flatpak update && sudo apt update && sudo apt dist-upgrade && reboot'
alias fuckoff='sudo snap refresh && flatpak update && sudo apt update && sudo apt dist-upgrade && poweroff'

#---Vanilla OS---
#zsh Extensions
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
