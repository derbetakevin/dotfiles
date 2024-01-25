{
  config,
  lib,
  pkgs,
  ...
}: {
  users = {
    users = {
      derbetakevin = {
        extraGroups = [
        ];
      };
    };

    groups = {
    };
  };
}
