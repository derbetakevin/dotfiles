{
  config,
  pkgs,
  inputs,
  ...
}: {
  config = {
    programs = {
      dconf = {
        enable = true;
      };

      firefox = {
        enable = true;
        languagePacks = ["de"];
        package = pkgs.firefox-wayland;
      };

      nano = {
        enable = false; #Bye Bye Nano
      };
    };

    environment = {
      systemPackages = with pkgs; [
        fd # Terminal File Search
        gitFull # No git = no flakes
        gh # GitHub CLI tool
        glxinfo # Test utilities for OpenGL
        gnome.gnome-disk-utility # mount .iso files
        gparted # Graphical disk partitioning tool
        hardinfo # Display information about your hardware and os
        lm_sensors # Tools for reading hardware sensors
        lsb-release # Prints certain LSB and Distribution information
        nh # NixHelper
        ntfs3g # FUSE-based NTFS driver with full write support
        pciutils # A collection of programs for inspecting and manipulating configuration of PCI devices
        smartmontools # Tools for monitoring the health of hard drives
        usbutils # Tools for working with USB devices, such as lsusb
        unzip # An extraction utility for archives compressed in .zip format
        virt-viewer # A viewer for remote virtual machines
        xdg-user-dirs # A tool to help manage well known user directories
      ];
      sessionVariables = {
        MOZ_ENABLE_WAYLAND = "1";
      };
    };
  };
}
