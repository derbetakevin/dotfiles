{
  config,
  lib,
  pkgs,
  ...
}: {
  config = {
    virtualisation = {
      podman = {
        enable = true;
        dockerCompat = true;
        defaultNetwork = {
          settings = {
            dns_enabled = true;
          };
        };
      };
    };
    environment = {
      systemPackages = with pkgs; [
        distrobox
      ];
    };
  };
}
