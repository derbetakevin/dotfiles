# Oracle VirtualBox
{
  config,
  pkgs,
  ...
}: {
  config = {
    users = {
      extraGroups = {
        vboxusers = {
          members = [
            "derbetakevin"
          ];
        };
      };
    };
    virtualisation = {
      virtualbox = {
        host = {
          enable = true;
          enableExtensionPack = true;
        };
      };
    };
  };
}
