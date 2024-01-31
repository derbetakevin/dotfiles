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
        chatterino2
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
