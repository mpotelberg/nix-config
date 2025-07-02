{pkgs, ...}: {
  # Must be imported by configuration.nix
  services.xserver.desktopManager.xterm.enable = false;

  # Enable the KDE Desktop Environment.
  services = {
    displayManager.sddm.enable = true;
    displayManager.sddm.wayland.enable = true;

    desktopManager.plasma6.enable = true;
  };

  environment.systemPackages = with pkgs; [
    kdePackages.discover # Optional: Install if you use Flatpak or fwupd firmware update sevice
    kdePackages.kcalc # Calculator
    kdePackages.kcharselect # Tool to select and copy special characters from all installed fonts
    kdePackages.kcolorchooser # A small utility to select a color
    kdePackages.kolourpaint # Easy-to-use paint program
    kdePackages.ksystemlog # KDE SystemLog Application
    kdePackages.sddm-kcm # Configuration module for SDDM
    kdiff3 # Compares and merges 2 or 3 files or directories
    kdePackages.isoimagewriter # Optional: Program to write hybrid ISO files onto USB disks
    kdePackages.partitionmanager # Optional Manage the disk devices, partitions and file systems on your computer
    hardinfo2 # System information and benchmarks for Linux systems
    haruna # Open source video player built with Qt/QML and libmpv
    wayland-utils # Wayland utilities
    wl-clipboard # Command-line copy/paste utilities for Wayland
    kdePackages.filelight # Quickly visualize your disk space usage
    kdePackages.kdeconnect-kde # Multi-platform app that allows your devices to communicate
    kdePackages.sweeper # Application that helps to clean unwanted traces the user leaves on the system
    kdePackages.ktorrent # Powerful BitTorrent client
    kdePackages.kmousetool # Program that clicks the mouse for you
  ];
}
