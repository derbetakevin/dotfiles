# Acer specific config
{
  config,
  pkgs,
  ...
}: {
  imports = [
    # ../../pkgs/awesomewm/default.nix
    # ../../pkgs/dev.nix
    # ../../pkgs/distrobox.nix
    # ../../pkgs/gaming.nix
    #../../pkgs/gnome/default.nix
    # ../../pkgs/gnome/games.nix
    ../../pkgs/hyprland/default.nix
    # ../../pkgs/kde/default.nix
    # ../../pkgs/kde/games.nix
    # ../../pkgs/obs.nix
    # ../../pkgs/qemu-kvm.nix
    # ../../starship.nix
    ../../pkgs/terminal.nix
    # ../../pkgs/virtualbox.nix
    # ../../pkgs/wayfire/default.nix
    # ../../pkgs/web-browser.nix
    # ../../pkgs/xfce/default.nix
  ];

  # Bootloader has to be done per machine, since the Acer doesn't
  # support UEFI.
  boot = {
    loader = {
      grub = {
        enable = true;
        device = "/dev/sda";
      };
    };

    kernelPackages = pkgs.linuxPackages_latest;
  };

  # Hostname, networking and bluetooth
  networking = {
    hostName = "AcerNix2306-1";
  };

  # Services are good. Services are great. We should use them!
  services = {
    printing = {
      enable = true;
      drivers = with pkgs; [
        epson-escpr2 # Add drivers for Epson WF-7710 printer support
      ];
    };

    # Remove JACK support from PipeWire
    pipewire = {
      jack = {
        enable = false;
      };
    };
  };
}
