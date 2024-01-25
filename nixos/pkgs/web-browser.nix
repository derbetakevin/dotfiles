# Web-Browsers
{
  config,
  pkgs,
  ...
}: {
  config = {
    programs = {
    };
    environment = {
      systemPackages = with pkgs; [
        brave
        epiphany
        #firefox (see ./default.nix)
        google-chrome
        libsForQt5.falkon
        libsForQt5.konqueror
        librewolf
        lynx
        microsoft-edge
        #microsoft-edge-beta
        #microsoft-edge-dev
        netsurf.browser
        opera
        palemoon-bin
        tor-browser
        ungoogled-chromium
        vivaldi
        #yandex-browser
        #yandex-browser-beta
      ];
    };
  };
}
