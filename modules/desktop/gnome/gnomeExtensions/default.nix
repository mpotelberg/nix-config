{
  config,
  pkgs,
  ...
}: {
  dconf.settings = {
    "org/gnome/shell" = {
      disable-user-extensions = false;

      # `gnome-extensions list` for a list
      enabled-extensions = [
        "CoverflowAltTab@palatis.blogspot.com"
        "TopIcons@phocean.net"
        "Vitals@CoreCoding.com"
        "appindicatorsupport@rgcjonas.gmail.com"
        "arcmenu@arcmenu.com"
        "auto-move-windows@gnome-shell-extensions.gcampax.github.com"
        "blur-my-shell@aunetx"
        "clipboard-indicator@tudmotu.com"
        "dash-to-panel@jderose9.github.com"
        "date-menu-formatter@marcinjakubowski.github.com"
        "ding@rastersoft.com"
        "drive-menu@gnome-shell-extensions.gcampax.github.com"
        "gsconnect@andyholmes.github.io"
        "pop-shell@system76.com"
        "sound-output-device-chooser@kgshank.net"
        "weatheroclock@CleoMenezesJr.github.io"
        "workspace-indicator@gnome-shell-extensions.gcampax.github.com"
      ];
    };
  };

  home.packages = with pkgs.gnomeExtensions; [
    appindicator # Features for the tray
    topicons-plus # Background apps on the tray
    pop-shell # Window tiling
    blur-my-shell # Blurs background of the shell
    dash-to-panel # Windows like bottom bar
    desktop-icons-ng-ding # Things on desktop like other DE
    arcmenu # Apps menu in the top right like other DE
    weather-oclock # Shows weather in tray, requires gnome-weather
    gsconnect # KDE Connect for Gnome
    sound-output-device-chooser # Tray output chooser
    clipboard-indicator # Clipboard manager
    removable-drive-menu # Manage drives from tray
    vitals # Live computer stats
    coverflow-alt-tab # 3D view when alt-tabbing
    workspace-indicator # Wordspace indicator and switcher in tray
    auto-move-windows # Moves windows to a specific workspace when opened
    date-menu-formatter
  ];
}
