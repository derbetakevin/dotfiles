{
  config,
  lib,
  pkgs,
  ...
}: {
  config = {
    services = {
      xserver = {
        enable = true;
        displayManager = {
          lightdm = {
            enable = true;
          };
        };

        desktopManager = {
          xfce = {
            enable = true;
          };
        };
      };

      gvfs = {
        enable = true;
      };
    };

    xdg = {
      portal = {
        enable = true;
        extraPortals = with pkgs; [
          xdg-desktop-portal-gtk
        ];
      };
    };

    environment = {
      sessionVariables = {
      };

      systemPackages = with pkgs.xfce; [
        xfce4-whiskermenu-plugin
      ];

      variables = {
      };
    };
  };
}
