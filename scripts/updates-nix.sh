#!/run/current-system/sw/bin/bash

echo -e "\n\e[1m\e[31mWas möchtest du tun?\e[0m"
echo -e "\e[34m1. Nur das Flake updaten."
echo -e "\e[34m2. Nur NixOS Updates anwenden."
echo -e "\e[34m3. Nur LOKALE NixOS Konfigurationsänderungen anwenden."
echo -e "\e[34m4. Nur Flatpaks updaten"
echo -e "\e[34m5. Nur Distroboxen updaten"
echo -e "\e[34m6. Updates fürs gesamte System anwenden. \e[0m"
echo -e "\e[34m7. Updates fürs gesamte System anwenden und neustarten.\e[0m"
echo -e "\e[34m8. Updates fürs gesamte System anwenden und herunterfahren.\e[0m"
echo -e "\e[34m9. Nichts.\e[0m"

read -p $'\n\e[96mWähle eine Option (1-9): \e[0m' option

case $option in
  1)
    echo -e "\n\e[1m\e[34mUpdaten des Flakes... \e[0m\n"
    nix flake update /home/derbetakevin/Development/dotfiles
    echo -e "Flake geupdated."
    ;;
  2)    
    sudo -v
    echo -e "\n\e[1m\e[31m1/2 (50%)Updaten des Flakes... \e[0m\n"
    nix flake update /home/derbetakevin/Development/dotfiles
    
    echo -e "\n\e[1m\e[31m2/2 (100%)Updaten von NixOS... \e[0m\n"
    sudo nixos-rebuild switch --flake /home/derbetakevin/Development/dotfiles#amdryzen
    echo -e "NixOS geupdated."
    ;;  
  3)    
    sudo -v
    echo -e "\n\e[1m\e[34mAnwenden von LOKALEN Konfigurationsänderungen auf NixOS... \e[0m\n"
    sudo nixos-rebuild switch --flake /home/derbetakevin/Development/dotfiles#amdryzen
    echo -e "LOKALE Konfigurationsänderungen auf NixOS angewendet."
    ;;  
  4)
    echo -e "\n\e[1m\e[34mUpdaten von Flakpaks... \e[0m\n"
    flatpak update -y
    echo -e "Flatpaks geupdated."
    ;;
  5)
    echo -e "\n\e[1m\e[34mUpdaten aller Distroboxen... \e[0m\n"
    distrobox-upgrade -a
    echo -e "Alle Distroboxen geupdated."
    ;;
  6)    
    sudo -v
    echo -e "\n\e[1m\e[31m1/4 (25%) \e[34mUpdaten von Flatpaks... \e[0m\n"
    flatpak update -y

    echo -e "\n\e[1m\e[31m2/4 (50%) \e[34mUpdaten aller Distroboxen... \e[0m\n"
    distrobox-upgrade -a

    echo -e "\n\e[1m\e[31m3/4 (75%) \e[34mUpdaten des Flakes... \e[0m\n"
    nix flake update /home/derbetakevin/Development/dotfiles

    echo -e "\n\e[1m\e[31m4/4 (100%) \e[34mUpdaten von NixOS... \e[0m\n"
    sudo nixos-rebuild switch --flake /home/derbetakevin/Development/dotfiles#amdryzen

    echo -e "Updates angewendet."
    ;;
  7)
    sudo -v
    echo -e "\n\e[1m\e[31m1/4 (25%) \e[34mUpdaten von Flatpaks... \e[0m\n"
    flatpak update -y

    echo -e "\n\e[1m\e[31m2/4 (50%) \e[34mUpdaten aller Distroboxen... \e[0m\n"
    distrobox-upgrade -a

    echo -e "\n\e[1m\e[31m3/4 (75%) \e[34mUpdaten des Flakes... \e[0m\n"
    nix flake update /home/derbetakevin/Development/dotfiles

    echo -e "\n\e[1m\e[31m4/4 (100%) \e[34mUpdaten von NixOS... \e[0m\n"
    sudo nixos-rebuild switch --flake /home/derbetakevin/Development/dotfiles#amdryzen

    echo "Updates angewendet. Neustarten..."
    sleep 1
    reboot
    ;;
  8)
    sudo -v
    echo -e "\n\e[1m\e[31m1/4 (25%) \e[34mUpdaten von Flatpaks... \e[0m\n"
    flatpak update -y

    echo -e "\n\e[1m\e[31m2/4 (50%) \e[34mUpdaten aller Distroboxen... \e[0m\n"
    distrobox-upgrade -a

    echo -e "\n\e[1m\e[31m3/4 (75%) \e[34mUpdaten des Flakes... \e[0m\n"
    nix flake update /home/derbetakevin/Development/dotfiles

    echo -e "\n\e[1m\e[31m4/4 (100%) \e[34mUpdaten von NixOS... \e[0m\n"
    sudo nixos-rebuild switch --flake /home/derbetakevin/Development/dotfiles#amdryzen

    echo "Updates angewendet. Herunterfahren..."
    sleep 1
    poweroff
    ;;
  9)
    echo "Verlassen..."
    sleep 1
    ;;
  *)
    echo "Ungültige Eingabe."
    read -p $'\n\e[96mWähle eine Option (1-9): \e[0m' option
esac