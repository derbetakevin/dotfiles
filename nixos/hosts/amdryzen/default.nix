# amdryzen specific config
{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    # ../../pkgs/awesomewm/default.nix
    ../../pkgs/dev.nix
    ../../pkgs/distrobox.nix
    ../../pkgs/gaming.nix
    #../../pkgs/gnome/default.nix
    ../../pkgs/gnome/games.nix
    ../../pkgs/hyprland/default.nix
    # ../../pkgs/kde/default.nix
    ../../pkgs/kde/games.nix
    ../../pkgs/obs.nix
    ../../pkgs/qemu-kvm.nix
    # ../../starship.nix
    ../../pkgs/terminal/default.nix
    ../../pkgs/terminal/extra.nix
    # ../../pkgs/virtualbox.nix
    # ../../pkgs/wayfire/default.nix
    ../../pkgs/web-browser.nix
    # ../../pkgs/xfce/default.nix
  ];

  boot = {
    loader = {
      systemd-boot = {
        enable = true;
      };
      efi = {
        canTouchEfiVariables = true;
      };
    };

    kernelPackages = pkgs.linuxPackages_zen;
  };

  networking = {
    hostName = "AMDNix2312-X";
  };

  hardware = {
    bluetooth = {
      enable = true;
    };
  };

  services = {
    blueman = {
      enable = true;
    };

    pipewire = {
      jack = {
        enable = true;
      };
    };

    printing = {
      enable = true;
      drivers = with pkgs; [
        epson-escpr2 # Add drivers for Epson WF-7710 printer support
      ];
    };

    udev = {
      extraRules = ''
        # Stream Deck MK.2
        SUBSYSTEMS=="usb", ATTRS{idVendor}=="0fd9", GROUP="users", TAG+="uaccess"

        # Bluetooth Adapter
        SUBSYSTEMS=="usb", ATTRS{idVendor}=="0a5c", GROUP="users", TAG+="uaccess"
      '';
    };
  };
}
