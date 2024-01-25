#Fork of https://github.com/JerrySM64/dotfiles/blob/legacy/nixos/obs.nix 24.01.2024
{
  config,
  pkgs,
  ...
}: {
  config = {
    boot = {
      kernelModules = ["v4l2loopback"];
      extraModulePackages = [config.boot.kernelPackages.v4l2loopback];
    };

    environment.systemPackages = with pkgs; [
      #obs-studio
      #obs-studio-plugins.advanced-scene-switcher
      #obs-studio-plugins.obs-gstreamer
      #obs-studio-plugins.obs-livesplit-one
      #obs-studio-plugins.obs-pipewire-audio-capture
      #obs-studio-plugins.obs-tuna
      #obs-studio-plugins.obs-vaapi
      #obs-studio-plugins.obs-vkcapture
      #obs-studio-plugins.waveform
      v4l2-relayd
      v4l-utils
    ];
  };
}
