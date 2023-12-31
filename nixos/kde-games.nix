# KDE-specific games

{ config, pkgs, ... }: {
  config = {
    environment.systemPackages = with pkgs; [
      libsForQt5.bomber
      libsForQt5.bovo
      libsForQt5.granatier
      libsForQt5.kapman
      libsForQt5.katomic
      libsForQt5.kblackbox
      libsForQt5.kblocks
      libsForQt5.kbounce
      libsForQt5.kbreakout
      libsForQt5.kdiamond
      libsForQt5.kigo
      libsForQt5.killbots
      libsForQt5.klines
      libsForQt5.kmahjongg
      libsForQt5.kmines
      libsForQt5.knavalbattle
      libsForQt5.knetwalk
      libsForQt5.knights
      libsForQt5.kolf
      libsForQt5.kollision
      libsForQt5.konquest
      libsForQt5.kpat
      libsForQt5.kreversi
      libsForQt5.kshisen
      libsForQt5.kspaceduel
      libsForQt5.ksquares
      libsForQt5.ksudoku
      libsForQt5.palapeli
      libsForQt5.picmi
    ];
  };
}