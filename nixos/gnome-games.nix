# GNOME-specific games

{ config, pkgs, ... }: {
  config = {
    environment = {
      systemPackages = with pkgs; [
        gnome-2048
      ] ++ (with gnome; [
        five-or-more
        four-in-a-row
        gnome-chess
        gnome-klotski
        gnome-mahjongg
        gnome-mines
        gnome-nibbles
        gnome-robots
        gnome-sudoku
        gnome-taquin
        gnome-tetravex
        hitori
        iagno
        lightsoff
        quadrapassel
        tali
      ]);
    };
  };
}
