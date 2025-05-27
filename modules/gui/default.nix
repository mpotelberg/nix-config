{pkgs, ...}: {
  imports = [
    ./vscode
  ];

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    pkgs.obsidian # Notes and organisation (unfree)
    pkgs.stremio # Media (unfree)
    # pkgs.ytui-music # Youtube music CLI
    # pkgs.legcord # Discord
    # pkgs.prismlauncher # Minecraft
    # pkgs.godot # Configurer au prochain projet
    # pkgs.gimp3 # Image manipulation
    # pkgs.auto-multiple-choice # Creation et correction de QCM
    # pkgs.scrcpy # Android display and control over USB
  ];

  programs.firefox.enable = true;

  # programs.steam.enable = true; Pas avant le CAPES ! è_é
}
