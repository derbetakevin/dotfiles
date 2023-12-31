# GNOME-specific games

{ config, pkgs, ... }: {
  config = {
    environment.systemPackages = with pkgs; [
      gnome-2048
      gnome.five-or-more
      gnome.four-in-a-row
      gnome.gnome-chess
      gnome.gnome-klotski
      gnome.gnome-mahjongg
      gnome.gnome-mines
      gnome.gnome-nibbles
      gnome.gnome-robots
      gnome.gnome-sudoku
      gnome.gnome-taquin
      gnome.gnome-tetravex
      gnome.hitori
      gnome.iagno
      gnome.lightsoff
      gnome.quadrapassel
      gnome.tali
    ];
  };
}