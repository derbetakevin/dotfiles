# Home Manager Configuration for amdryzen
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
