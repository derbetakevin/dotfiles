{ config, pkgs, ... }: {

  config = {  
    programs = {
       steam = {
        enable = true;
        remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
        dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
      };
    };

    # Enable the Hardware
    hardware = {
      steam-hardware = {
        enable = true;
        };
      };
  
    # Gaming-specific packages
    environment.systemPackages = with pkgs; [
      bottles
      cartridges
      dolphin-emu
      duckstation
      gamemode
      lutris
      mangohud
      mgba
      minecraft
      osu-lazer-bin
      pcsx2
      retroarch
      superTuxKart
      winePackages.stableFull
      winetricks
      xboxdrv
      xemu
    ];
  };
}