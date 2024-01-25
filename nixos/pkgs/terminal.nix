# Packages for the best terminal
{
  config,
  pkgs,
  ...
}: {
  config = {
    programs = {
      command-not-found = {
        enable = true;
      };
      neovim = {
        defaultEditor = true;
        enable = true;
      };
    };
    environment.systemPackages = with pkgs; [
      agedu
      alacritty
      btop
      bunnyfetch
      cmatrix
      cool-retro-term
      cpufetch
      duf
      eza
      fastfetch
      figlet
      htop
      hyfetch
      ipfetch
      kitty
      lsd
      mapscii
      mc #Midnight Commander
      neofetch
      nushell
      owofetch
      pfetch-rs
      profetch
      progress
      screenfetch
      radeontop
      ranger
      starship
      tiv #Terminal Image Viewer
      uwufetch
      wget
    ];
  };
}
