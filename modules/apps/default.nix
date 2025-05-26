{
  config,
  lib,
  pkgs,
  ...
}: {

  home.packages = with pkgs; [
    pkgs.ytui-music # Youtube music CLI
    pkgs.legcord # Discord
    pkgs.prismlauncher # Minecraft
    pkgs.stremio # Media
  ];

  # programs.steam.enable = true; Pas avant le CAPES ! è_é

  };
}
