# Hyprland Config acertravelmate
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
        source = ../../../configurations/hosts/acertravelmate/hypr;
        recursive = true;
      };
    };
  };
}
