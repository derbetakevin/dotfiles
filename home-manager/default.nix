# Home Manager Configuration for all devices

{ config, lib, pkgs, ... }:

{
  home = {
    packages = with pkgs; [
    ];
    # Symlink files from other locations
    file = {
      #".config/alacritty" = {
      #  source = ../configurations/alacritty;
      #  recursive = true;
      #};
      ".config/conky" = {
        source = ../configurations/conky;
        recursive = true;
      };
      #".config/fastfetch" = {
      #  source = ../configurations/fastfetch;
      #  recursive = true;
      #};
      ".config/neofetch" = {
        source = ../configurations/neofetch;
        recursive = true;
      };
      ".config/starship.toml" = {
        source = ../configurations/starship.toml;
      };

      # Shell
      ".bashrc" = {
        source = ../configurations/bash/.bashrc;
      };
      ".config/fish/config.fish" = {
        source = ../configurations/fish/config.fish;
      };
      ".zshrc" = {
        source = ../configurations/zsh/.zshrc;
      };
      ".aliases" = {
        source = ../configurations/aliases/.aliases;
      };
      ".aliases_nixos_flake" = {
        source = ../configurations/aliases/.aliases_nixos_flake;
      };
    };
  };
}
