# AMDRyzen specific pkgs
{
  config,
  pkgs,
  ...
}: {
  config = {
    programs = {
      ausweisapp = {
        enable = true;
      };

      fish = {
        enable = true;
      };

      geary = {
        enable = true;
      };

      thunar = {
        enable = true;
      };

      zsh = {
        enable = true;
        autosuggestions = {
          enable = true;
          async = true;
          strategy = ["completion"];
        };
        syntaxHighlighting = {
          enable = true;
        };
      };
    };

    virtualisation = {
      waydroid = {
        enable = true;
      };
    };

    environment = {
      systemPackages = with pkgs; [
        anydesk
        chatterino2
        clementine
        conky
        discord
        element-desktop
        espanso-wayland
        evince
        filezilla
        fsearch
        gimp
        handbrake
        inkscape
        kdenlive
        libreoffice
        mcfly
        nextcloud-client
        onlyoffice-bin
        putty
        realvnc-vnc-viewer
        remmina
        revolt-desktop
        rpi-imager
        skypeforlinux
        signal-desktop
        shortwave
        slack
        spotify
        standardnotes
        tdesktop
        teamspeak_client
        teamspeak5_client
        teamviewer
        ted
        thunderbird-unwrapped
        vesktop
        vivaldi
        vlc
        whatsapp-for-linux
      ];
    };
  };
}
