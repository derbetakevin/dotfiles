# Hyprland Config amdryzen
{
  config,
  lib,
  pkgs,
  ...
}: {
  home = {
    # Symlink dots needed for Hyprland from local repo
    file = {
      ".config/hypr" = {
        source = ../../../configurations/hosts/amdryzen/hypr;
        recursive = true;
      };
    };
  };
}
