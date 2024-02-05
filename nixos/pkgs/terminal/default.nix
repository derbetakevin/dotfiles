# Packages for the default terminal experience
{ 
  config,
  pkgs,
  ...
}: {
  config = {
    neovim = {
      enable = true;
      package = pkgs.neovim;
      defaultEditor = true;
    };
    environment = {
      systemPackages = with pkgs; [
        btop
        duf
        eza
        htop
        kitty
        neofetch
        pfetch-rs
        starship
        wget
      ];
    };
  };
}
