{
  config,
  lib,
  pkgs,
  ...
}: {
  users = {
    users = {
      derbetakevin = {
        isNormalUser = true;
        description = "Der Beta Kevin";
        extraGroups = [
          "networkmanager"
          "wheel"
        ];
        packages = with pkgs; [
        ];
        openssh = {
          authorizedKeys = {
            keys = [
            ];
          };
        };
      };
    };
  };
}
