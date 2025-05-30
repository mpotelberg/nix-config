{
  config,
  pkgs,
  ...
}: {
  imports = with ./../../modules [
    # ./../modules/gnome
    /cli
    /gui
  ];

  programs.home-manager.enable = true;
  home.username = "maxlamenace";
  home.homeDirectory = "/home/maxlamenace";
  home.stateVersion = "25.05"; # Don't touch
}
