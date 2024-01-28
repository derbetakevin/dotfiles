{
  config,
  lib,
  pkgs,
  ...
}: {
  users = {
    users = {
      derbetakevin = {
        shell = pkgs.bash;
      };
    };
  };
}
