# AcerTravelmate5760 specific pkgs
{
  config,
  pkgs,
  ...
}: {
  config = {
    programs = {
      zsh = {
        enable = true;
      };
    };
    environment = {
      systemPackages = with pkgs; [
        discord
        libreoffice
        tdesktop
        teamviewer
        vlc
        whatsapp-for-linux
      ];
    };
  };
}
