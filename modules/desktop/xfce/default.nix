{pkgs, ...}: {
  # Must be imported by configuration.nix
  services.xserver.desktopManager.xterm.enable = false;

  # Enable the Xfce Desktop Environment.
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.desktopManager.xfce.enable = true;

  environment.systemPackages = with pkgs.xfce; [
    catfish
    orage
    xfburn
    xfce4-appfinder
    xfce4-clipman-plugin
    xfce4-cpugraph-plugin
    xfce4-dict
    xfce4-fsguard-plugin
    xfce4-genmon-plugin
    xfce4-netload-plugin
    xfce4-panel
    xfce4-pulseaudio-plugin
    xfce4-systemload-plugin
    xfce4-weather-plugin
    xfce4-whiskermenu-plugin
    xfce4-xkb-plugin
    xfdashboard
    xfwm4
  ];
}
