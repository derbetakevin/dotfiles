# Home Manager Configuration for acertravelmate
{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ../../default.nix
    ./hyprconf.nix
    ../../hyprconf.nix
    ../../theme.nix
  ];

  home = {
    packages = with pkgs; [
      dconf
      gnome.dconf-editor
    ];
  };
}
