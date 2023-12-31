#!/bin/bash

echo -e "\n\e[1m\e[34mStart Updates\n\n\e[31m1/4 (25%) \e[34mAppimages \e[3m(zap upgrade)\e[0m\n"
zap upgrade

echo -e "\n\e[1m\e[31m2/4 (50%) \e[34mSnaps \e[3m(sudo snap refresh --list && sudo snap refresh)\e[0m\n"
sudo snap refresh --list
sudo snap refresh

echo -e "\n\e[1m\e[31m3/4 (75%) \e[34mFlatpaks \e[3m(flatpak update)\e[0m\n"
flatpak update

echo -e "\n\e[1m\e[31m4/4 (100%) \e[34mRpms - openSUSE Tumbleweed \e[3m(sudo zypper dup --details)\e[0m\n"
sudo zypper dup --details

echo -e "\n\e[1m\e[31mBefehle abgeschlossen. Was möchtest du tun?\e[0m"
echo -e "\e[34m1. Befehl beenden\e[0m"
echo -e "\e[34m2. PC neu starten\e[0m"
echo -e "\e[34m3. PC herunterfahren\e[0m"

read -p $'\n\e[96mBitte wähle eine Option (1-3): \e[0m' option

case $option in
  1)
    echo "Befehl wird beendet."
    ;;
  2)
    echo "PC wird neu gestartet..."
    sudo systemctl reboot
    ;;
  3)
    echo "PC wird heruntergefahren..."
    sudo shutdown now
    ;;
  *)
    echo "Ungültige Option. Der Befehl wird beendet."
    ;;
esac
