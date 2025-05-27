{
  config,
  lib,
  pkgs,
  ...
}: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # pkgs.ytui-music # Youtube music CLI
    # pkgs.legcord # Discord
    # pkgs.prismlauncher # Minecraft
    # pkgs.stremio # Media (unfree)
    pkgs.obsidian # Notes and organisation (unfree)
  ];

  programs.firefox.enable = true;
  # programs.steam.enable = true; Pas avant le CAPES ! è_é
}
