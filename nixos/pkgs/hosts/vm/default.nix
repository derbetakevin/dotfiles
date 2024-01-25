# AMDRyzen specific pkgs
{
  config,
  pkgs,
  ...
}: {
  config = {
    programs = {
      thunar = {
        enable = true;
      };
    };

    environment = {
      systemPackages = with pkgs; [
        win-virtio
      ];
    };
  };
}
