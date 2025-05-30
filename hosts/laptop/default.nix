{pkgs, ...}: {
  environment.gnome.excludePackages = with pkgs; [
    # orca # Screen reader
    # evince # Document viewer (pdf...)
    # file-roller # Archive manager
    geary # Email
    # gnome-disk-utility # Disk and partition manager
    # seahorse # Password manager (SSH...)
    # sushi # File viewer (pdf, music...)
    # sysprof # System profiling
    # adwaita-icon-theme
    # nixos-background-info
    gnome-backgrounds
    # gnome-bluetooth
    # gnome-color-manager
    # gnome-control-center
    # gnome-shell-extensions
    gnome-tour # Gnome intro
    # gnome-user-docs
    # glib # For gsettings program
    # gnome-menus
    # gtk3.out # For gtk-launch program
    # xdg-user-dirs # Update user dirs as described in https://freedesktop.org/wiki/Software/xdg-user-dirs/
    # xdg-user-dirs-gtk # Used to create the default bookmarks
    # baobab # Disk analyzer
    epiphany # Web browser
    gnome-text-editor
    gnome-calculator
    # gnome-calendar
    gnome-characters
    # gnome-clocks
    # gnome-console
    gnome-contacts
    gnome-font-viewer
    # gnome-logs
    # gnome-maps
    gnome-music
    # gnome-system-monitor
    gnome-weather
    # loupe # Image viewer
    # nautilus # File manager
    # gnome-connections # Remote desktop
    simple-scan
    # snapshot # Camera
    # totem # Video viewer
    # yelp # Help viewer
    # gnome-software
  ];
}
