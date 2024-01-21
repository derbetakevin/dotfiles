# Web-Browsers

{ config, pkgs, ... }: {
  config = {
    programs = {
      firefox = {
        enable = true;
        languagePacks = ["de"];
        package = pkgs.firefox;
      };
    };
    environment = {
      systemPackages = with pkgs; [
        brave
        epiphany
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
        yandex-browser
        #yandex-browser-beta
      ];
    };
  };
}
