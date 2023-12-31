# This file is heavily based on the hyprland.nix file written by Lin Xianyi.
# HUGE shoutout to him/her for letting me base my file off of his/her one!
# Be sure to check him/her out: https://github.com/iynaix

{ config, pkgs, ... }: {
  config = {
    services = {
      xserver = {
        enable = true;
        # videoDrivers = [ "amdgpu" ];
        displayManager = {
          sddm = {
            enable = true;
          };
        };
        desktopManager = {
          plasma5 = {
            enable = true;
          };
        };
      };

      # fwupd service
      fwupd = {
        enable = true;
      };
    };

    # XDG Desktop Portal
    xdg = {
      portal = {
        enable = true;
        extraPortals = with pkgs; [
          xdg-desktop-portal-kde
        ];
      };
    };

    programs = {
      partition-manager = {
        enable = true;
      };
    };

    # KDE-specific packages
    environment.systemPackages = with pkgs; [
      kate
      kcalc
      libsForQt5.filelight
      libsForQt5.kget
      libsForQt5.kmail
      libsForQt5.ktorrent
      libsForQt5.kwallet-pam
      pciutils
    ];
  };
}