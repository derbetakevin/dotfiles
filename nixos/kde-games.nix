# KDE-specific games

{ config, pkgs, ... }: {
  config = {
    environment = {
      systemPackages = with pkgs; [
      ] ++ (with libsForQt5; [
        bomber
        bovo
        granatier
        kapman
        katomic
        kblackbox
        kblocks
        kbounce
        kbreakout
        kdiamond
        kigo
        killbots
        klines
        kmahjongg
        kmines
        knavalbattle
        knetwalk
        knights
        kolf
        kollision
        konquest
        kpat
        kreversi
        kshisen
        kspaceduel
        ksquares
        ksudoku
        palapeli
        picmi
      ]);
    };
  };
}
