#!/bin/bash

echo -e "\n\e[1m\e[37mDas Updates-Shellskript wird gestartet\n\n\e[33mUpdates, Neustart, Herunterfahren, Neustart mit Updates oder Herunterfahren mit Updates? (u/n/h/un/uh)\n\nStandardmäßig wird uh ausgewählt\n"
read answer

if [ "$answer" == "u" ]; then
    echo -e "\n\e[1m\e[34mStart von nur Updates\n\n\e[31m1/9 (11,1%) \e[34mAppimages \e[3m(zap upgrade)\e[0m\n"
    zap upgrade
    echo -e "\n\e[1m\e[31m2/9 (22,2%) \e[34mSnaps \e[3m(sudo snap refresh --list && sudo snap refresh)\e[0m\n"
    sudo snap refresh --list
    sudo snap refresh
    echo -e "\n\e[1m\e[31m3/9 (33,3%) \e[34mFlatpaks \e[3m(flatpak update)\e[0m\n"
    flatpak update
    echo -e "\n\e[1m\e[31m4/9 (44,4%) \e[34mApks - Alpine Linux \e[3m(sudo apk update && sudo apk upgrade)\e[0m\n"
    sudo apk update
    sudo apk upgrade
    echo -e "\n\e[1m\e[31m5/9 (55,5%) \e[34mXbps - Void Linux \e[3m(sudo xbps-install -Su)\e[0m\n"
    sudo xbps-install -Su
    echo -e "\n\e[1m\e[31m6/9 (66,6%) \e[34mRpms - Fedora \e[3m(sudo dnf update)\e[0m\n"
    sudo dnf update
    echo -e "\n\e[1m\e[31m7/9 (77,7%) \e[34mNix - NixOS \e[3m(sudo nix-channel --update && nix-env -u)\e[0m\n"
    sudo nix-channel --update
    nix-env -u
    echo -e "\n\e[1m\e[31m8/9 (88,8%) \e[34mPacmans - Arch Linux \e[3m(yay)\e[0m\n"
    yay
    echo -e "\n\e[1m\e[31m9/9 (99,9%) \e[34mDpkgs - Debian Sid \e[3m(sudo nala upgrade)\e[0m\n"
    sudo nala upgrade
elif [ "$answer" == "n" ]; then
	systemctl reboot
elif [ "$answer" == "h" ]; then
	systemctl poweroff
elif [ "$answer" == "un" ]; then
	echo -e "\n\e[1m\e[34mStart von Updates mit anschließenden Neustart\n\n\e[31m1/9 (11,1%) \e[34mAppimages \e[3m(zap upgrade)\e[0m\n"
	zap upgrade
    echo -e "\n\e[1m\e[31m2/9 (22,2%) \e[34mSnaps \e[3m(sudo snap refresh --list && sudo snap refresh)\e[0m\n"
    sudo snap refresh --list
    sudo snap refresh
    echo -e "\n\e[1m\e[31m3/9 (33,3%) \e[34mFlatpaks \e[3m(flatpak update)\e[0m\n"
    flatpak update
    echo -e "\n\e[1m\e[31m4/9 (44,4%) \e[34mApks - Alpine Linux \e[3m(sudo apk update && sudo apk upgrade)\e[0m\n"
    sudo apk update
    sudo apk upgrade
    echo -e "\n\e[1m\e[31m5/9 (55,5%) \e[34mXbps - Void Linux \e[3m(sudo xbps-install -Su)\e[0m\n"
    sudo xbps-install -Su
    echo -e "\n\e[1m\e[31m6/9 (66,6%) \e[34mRpms - Fedora \e[3m(sudo dnf update)\e[0m\n"
    sudo dnf update
    echo -e "\n\e[1m\e[31m7/9 (77,7%) \e[34mNix - NixOS \e[3m(sudo nix-channel --update && nix-env -u)\e[0m\n"
    sudo nix-channel --update
    nix-env -u
    echo -e "\n\e[1m\e[31m8/9 (88,8%) \e[34mPacmans - Arch Linux \e[3m(yay)\e[0m\n"
    yay
    echo -e "\n\e[1m\e[31m9/9 (99,9%) \e[34mDpkgs - Debian Sid \e[3m(sudo nala upgrade)\e[0m\n"
    sudo nala upgrade
	systemctl reboot
else
	echo -e "\n\e[1m\e[34mStart von Updates mit anschließenden Herunterfahren\n\n\e[31m1/9 (11,1%) \e[34mAppimages \e[3m(zap upgrade)\e[0m\n"
	zap upgrade
    echo -e "\n\e[1m\e[31m2/9 (22,2%) \e[34mSnaps \e[3m(sudo snap refresh --list && sudo snap refresh)\e[0m\n"
    sudo snap refresh --list
    sudo snap refresh
    echo -e "\n\e[1m\e[31m3/9 (33,3%) \e[34mFlatpaks \e[3m(flatpak update)\e[0m\n"
    flatpak update
    echo -e "\n\e[1m\e[31m4/9 (44,4%) \e[34mApks - Alpine Linux \e[3m(sudo apk update && sudo apk upgrade)\e[0m\n"
    sudo apk update
    sudo apk upgrade
    echo -e "\n\e[1m\e[31m5/9 (55,5%) \e[34mXbps - Void Linux \e[3m(sudo xbps-install -Su)\e[0m\n"
    sudo xbps-install -Su
    echo -e "\n\e[1m\e[31m6/9 (66,6%) \e[34mRpms - Fedora \e[3m(sudo dnf update)\e[0m\n"
    sudo dnf update
    echo -e "\n\e[1m\e[31m7/9 (77,7%) \e[34mNix - NixOS \e[3m(sudo nix-channel --update && nix-env -u)\e[0m\n"
    sudo nix-channel --update
    nix-env -u
    echo -e "\n\e[1m\e[31m8/9 (88,8%) \e[34mPacmans - Arch Linux \e[3m(yay)\e[0m\n"
    yay
    echo -e "\n\e[1m\e[31m9/9 (99,9%) \e[34mDpkgs - Debian Sid \e[3m(sudo nala upgrade)\e[0m\n"
    sudo nala upgrade
	systemctl poweroff
fi

