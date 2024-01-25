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
        chatterino2
        clementine
        element-desktop
        espanso-wayland
        filezilla
        gimp
        handbrake
        inkscape
        kdenlive
        mcfly
        nextcloud-client
        putty
        realvnc-vnc-viewer
        revolt-desktop
        rpi-imager
        skypeforlinux
        signal-desktop
        slack
        teamspeak_client
        teamspeak5_client
        ted
        vivaldi
      ];
    };
  };
}
