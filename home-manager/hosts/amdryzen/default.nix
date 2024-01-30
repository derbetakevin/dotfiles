{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
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
