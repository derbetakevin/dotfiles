{
  config,
  pkgs,
  ...
}: {
  config = {
    nixpkgs = {
      config = {
        permittedInsecurePackages = [
          "pulsar-1.109.0"
        ];
      };
    };

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
          extraGroups = [
            "adbusers"
          ];
        };
      };
    };

    environment.systemPackages = with pkgs; [
      alejandra
      dotnet-runtime_7
      #dotnet-runtime_8
      gh
      github-desktop
      gnat13
      gnumake
      gnome.ghex
      godot_4
      nix-prefetch-scripts
      pkg-config
      powershell
      pulsar
      python311Full
      rustup
      vscode
    ];
  };
}
