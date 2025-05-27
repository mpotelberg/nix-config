{
  config,
  lib,
  pkgs,
  ...
}: {
  # Not implemented yet
  # https://wiki.nixos.org/wiki/GNOME
  # https://discourse.nixos.org/t/howto-disable-most-gnome-default-applications-and-what-they-are/13505/15
  # https://discourse.nixos.org/t/setting-up-purpose-build-nixos-gnome-for-python-scripts-and-research-no-home-manager/63060/7
  environment.gnome.excludePackages = with pkgs; [
    orca
    evince
    file-roller
    geary
    gnome-disk-utility
    seahorse
    sushi
    sysprof
    gnome-shell-extensions
    adwaita-icon-theme
    nixos-background-info
    gnome-backgrounds
    gnome-bluetooth
    gnome-color-manager
    gnome-control-center
    gnome-shell-extensions
    gnome-tour # GNOME Shell detects the .desktop file on first log-in.
    gnome-user-docs
    # glib # for gsettings program
    gnome-menus
    # gtk3.out # for gtk-launch program
    # xdg-user-dirs # Update user dirs as described in https://freedesktop.org/wiki/Software/xdg-user-dirs/
    # xdg-user-dirs-gtk # Used to create the default bookmarks
    baobab
    epiphany
    gnome-text-editor
    gnome-calculator
    gnome-calendar
    gnome-characters
    gnome-clocks
    gnome-console
    gnome-contacts
    gnome-font-viewer
    gnome-logs
    gnome-maps
    gnome-music
    gnome-system-monitor
    gnome-weather
    loupe
    nautilus
    gnome-connections
    simple-scan
    snapshot
    totem
    yelp
    gnome-software
  ];
}
