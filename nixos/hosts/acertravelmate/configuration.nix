# Acer specific config
{ config, pkgs, ... }: {
  
  # Imports specific to the Acer
  imports = [
    # ../../awesomewm.nix
    # ../../dev-pkgs.nix
    # ../../gaming.nix
    # ../../gnome.nix
    # ../../gnome-gaming.nix
    ../../hyprland.nix
    # ../../kde.nix
    # ../../kde-gaming.nix
    # ../../wayfire.nix
    # ../../xfce.nix
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
    # Specify hostname
    hostName = "AcerNix2306-1";
  };
  
  # Services are good. Services are great. We should use them!
  services = {
    
    # Enable printing service via CUPS
    printing = {
      enable = true;
      # Add drivers for Epson WF-7710 printer support
      drivers = with pkgs; [
        epson-escpr2
      ];
    };

    # Add JACK support to PipeWire
    pipewire = {
      jack.enable = false;
    };
  };

  # Enable zsh-Shell
  programs.zsh.enable = true;

  # User account related things specific
  users = {
    users = {
      derbetakevin = {
        extraGroups = [];
        shell = pkgs.zsh;
      };
    };

    groups = {
      libvirtd = {
        members = ["root" "derbetakevin"];
      };
    };
  };

  # Environment related things specific
  environment = {
    
    # Packages specific
    systemPackages = with pkgs; [
      gitFull
    ];
  };
}
