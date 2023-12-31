{ config, pkgs, ... }: {

  config = {
    
    programs = {
      adb = {
        enable = true;
      };

      direnv = {
        enable = true;
        
        nix-direnv = {
          enable = true;
        };
      };
    };
    
    users = {
      users = {
        derbetakevin = {
          extraGroups = [ "adbusers" ];
        };
      };
    };

    environment.systemPackages = with pkgs; [
      emacs
      gh
      gitFull
      github-desktop
      gnat13
      gnumake
      gnome.ghex
      godot_4
      nix-prefetch-scripts
      pkg-config
      powershell
      python311Full
      vscode
    ];
  };
}