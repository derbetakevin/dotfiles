 Virtual Machine specific config
{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    # ../../pkgs/awesomewm/default.nix
    # ../../pkgs/dev.nix
    # ../../pkgs/gaming.nix
    #../../pkgs/gnome/default.nix
    # ../../pkgs/gnome/games.nix
    # ../../pkgs/hyprland/default.nix
    # ../../pkgs/kde/default.nix
    # ../../pkgs/kde/games.nix
    # ../../pkgs/obs.nix
    # ../../pkgs/qemu-kvm.nix
    # ../../starship.nix
    ../../pkgs/terminal/default.nix
    ../../pkgs/terminal/extra.nix
    # ../../pkgs/wayfire/default.nix
    # ../../pkgs/web-browser.nix
    ../../pkgs/xfce/default.nix
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

    kernelPackages = pkgs.linuxPackages-libre;
  };

  networking = {
    hostName = "NixVM";
  };

  services = {
    pipewire = {
      jack = {
        enable = false;
      };
    };
  };
}
