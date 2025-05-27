{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./../modules/gnome
    ./../modules/cli
    ./../modules/gui
  ];

  programs.home-manager.enable = true;
  home.username = "maxlamenace";
  home.homeDirectory = "/home/maxlamenace";
  home.stateVersion = "25.05"; # Don't touch
}
