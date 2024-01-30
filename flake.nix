{
  description = "Dotfiles and configuration files for NixOS";

  inputs = {
    # List of repos:
    nixpkgs.url = "github:nixos/nixpkgs/a136def4f7256146b32e3625e53dcdf7464165f9"; # -> NixOS Unstable channel (Temporairly hardcoded to an older commit to prevent the amdgpu firmware issue)
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-23.11"; # -> NixOS Stable channel (Currently Version 23.11)
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    home-manager,
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
                    ./home-manager/default.nix
                    # Host specific Home Manager configuration
                    ./home-manager/hosts/${host}/default.nix
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
            ./nixos/default.nix
            ./nixos/users.nix
            ./nixos/pkgs/default.nix
            ./nixos/pkgs/fonts.nix
            # host specific configuration
            ./nixos/hosts/${host}/default.nix
            ./nixos/hosts/${host}/hardware.nix
            ./nixos/hosts/${host}/users.nix
            ./nixos/pkgs/hosts/${host}/default.nix
          ];
        };
    in {
      # update with `nix flake update`
      # rebuild with `nixos-rebuild switch --flake .#<INSERT HOST HERE>`
      acertravelmate = mkHost "acertravelmate";
      amdryzen = mkHost "amdryzen";
      vm = mkHost "vm";
    };
  };
}
