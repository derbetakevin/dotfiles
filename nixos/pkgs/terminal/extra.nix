# Packages for the best terminal experience
{
  config,
  pkgs,
  ...
}: {
  config = {
    programs = {
      yazi = {
        enable = true;
        package = pkgs.yazi;
      };
    };
    environment.systemPackages = with pkgs; [
      agedu
      alacritty
      bunnyfetch
      cmatrix
      cool-retro-term
      cpufetch
      fastfetch
      figlet
      foot
      hyfetch
      ipfetch
      lsd
      mapscii
      mc #Midnight Commander
      nushell
      onefetch
      owofetch
      profetch
      progress
      screenfetch
      radeontop
      ranger
      tiv #Terminal Image Viewer
      uwufetch
    ];
  };
}
