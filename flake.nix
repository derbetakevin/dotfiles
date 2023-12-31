{
  description = "Dotfiles and configuration files for NixOS";

  inputs = {
    # List of repos:
    # nixpkgs          -> NixOS Unstable channel (Recommended if you plan to use GNOME)
    # nixpkgs-stable   -> NixOS Stable channel (Currently Version 23.11)
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-23.11";
    nixos-conf-editor.url = "github:vlinkz/nixos-conf-editor";
    nix-software-center.url = "github:vlinkz/nix-software-center";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    ...
  }: {
    nixosConfigurations = let
      user = "derbetakevin";
      mkHost = host:
        nixpkgs.lib.nixosSystem rec {
          system = "x86_64-linux";

          specialArgs = {
            inherit (nixpkgs) lib;
            inherit inputs nixpkgs system user;
          };

          modules = [
            inputs.home-manager.nixosModules.home-manager
            {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                users.${user} = {
                  imports = [
                    # Common Home Manager configuration
                    ./nixos/home.nix
                    # Host specific Home Manager configuration
                    ./nixos/hosts/${host}/home.nix
                  ];

                  home = {
                    username = user;
                    homeDirectory = "/home/${user}";
                    # Do not change this value!
                    stateVersion = "23.05";
                  };

                  # Let Home Manager manager and install itself
                  programs.home-manager.enable = true;
                };
              };
            }

            # common configuration
            ./nixos/configuration.nix
            # host specific configuration
            ./nixos/hosts/${host}/configuration.nix
            # host specific hardware configuration
            ./nixos/hosts/${host}/hardware-configuration.nix
          ];
        };
    in {
      # update with `nix flake update`
      # rebuild with `nixos-rebuild switch --flake .#<INSERT HOST HERE>`
      acertravelmate = mkHost "acertravelmate";
      amdryzen = mkHost "amdryzen";
    };
  };
}
