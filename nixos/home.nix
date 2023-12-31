# Home Manager Configuration for all devices

{ config, lib, pkgs, ... }:

{
  home = {
    packages = with pkgs; [
    ];
    # Symlink files from other locations
    file = {
      #".config/alacritty" = {
      #  source = config.lib.file.mkOutOfStoreSymlink "/home/derbetakevin/Development/dotfiles/configurations/alacritty";
      #  recursive = true;
      #};
      ".config/conky" = {
        source = config.lib.file.mkOutOfStoreSymlink "/home/derbetakevin/Development/dotfiles/configurations/conky";
        recursive = true;
      };
      ".config/fastfetch" = {
        source = config.lib.file.mkOutOfStoreSymlink "/home/derbetakevin/Development/dotfiles/configurations/fastfetch";
        recursive = true;
      };
      ".config/neofetch" = {
        source = config.lib.file.mkOutOfStoreSymlink "/home/derbetakevin/Development/dotfiles/configurations/neofetch";
        recursive = true;
      };
    };
  };
}
