{
  config,
  pkgs,
  inputs,
  ...
}: {
  config = {
    programs = {
      dconf = {
        enable = true;
      };

      firefox = {
        enable = true;
        languagePacks = ["de"];
        package = pkgs.firefox-wayland;
      };

      nano = {
        enable = false; #Bye Bye Nano
      };
    };

    environment = {
      systemPackages = with pkgs; [
        anydesk
        conky
        discord
        evince
        fsearch
        gitFull
        glxinfo
        gnome.gnome-disk-utility
        gparted
        hardinfo
        libreoffice
        lm_sensors
        lsb-release
        nh
        ntfs3g
        onlyoffice-bin
        pciutils
        remmina
        shortwave
        smartmontools
        standardnotes
        spotify
        tdesktop
        teamviewer
        thunderbird-unwrapped
        usbutils
        unzip
        vesktop
        virt-viewer
        vlc
        whatsapp-for-linux
        xdg-user-dirs
      ];
      sessionVariables = {
        MOZ_ENABLE_WAYLAND = "1";
      };
    };
  };
}
