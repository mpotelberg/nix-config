{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./../../modules/cli
    ./../../modules/gui
    ./../../modules/desktop/gnome/gnomeExtensions
  ];

  programs.home-manager.enable = true;
  home.username = "maxlamenace";
  home.homeDirectory = "/home/maxlamenace";
  home.stateVersion = "25.05"; # Don't touch
}
