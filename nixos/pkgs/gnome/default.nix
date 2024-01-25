{
  config,
  pkgs,
  ...
}: {
  config = {
    services = {
      xserver = {
        enable = true;
        displayManager.gdm = {
          enable = true;
        };

        desktopManager.gnome = {
          enable = true;
        };
      };

      fwupd = {
        enable = true;
      };
    };

    # XDG Desktop Portal
    xdg = {
      portal = {
        enable = true;
        extraPortals = with pkgs; [
          xdg-desktop-portal-gnome
        ];
      };
    };

    environment = {
      systemPackages = with pkgs; [
        gnome.gnome-tweaks
        gnomeExtensions.appindicator
        gnomeExtensions.blur-my-shell
        gnomeExtensions.dash-to-dock
        gnomeExtensions.just-perfection
        gnomeExtensions.removable-drive-menu
        gnomeExtensions.vitals
        yaru-theme
      ];
    };
  };
}
