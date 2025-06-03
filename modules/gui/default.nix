{pkgs, ...}: {
  imports = [
    ./vscode
  ];

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    obsidian # Notes and organisation (unfree)
    dorion # Small discord client
    libreoffice # Office suite
    # ytui-music # Youtube music CLI
    # filezilla # FTP Client
    # stremio # Media (unfree)
    # prismlauncher # Minecraft
    # godot # Configurer au prochain projet
    # gimp3 # Image manipulation
    # auto-multiple-choice # Creation et correction de QCM
    # scrcpy # Android display and control over USB
  ];

  programs.firefox.enable = true;

  # programs.steam.enable = true; Pas avant le CAPES ! è_é
}
