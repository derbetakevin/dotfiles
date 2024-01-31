# Hyprland Config
{
  config,
  lib,
  pkgs,
  ...
}: {
  home = {
    # Symlink dots needed for Hyprland from local repo
    file = {
      ".config/kitty" = {
        source = ../configurations/kitty;
        recursive = true;
      };
      ".config/rofi" = {
        source = ../configurations/rofi;
        recursive = true;
      };
      ".config/swaync" = {
        source = ../configurations/swaync;
        recursive = true;
      };
      ".config/waybar" = {
        source = ../configurations/waybar;
        recursive = true;
      };
    };
  };
}
