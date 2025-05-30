{pkgs, ...}: {
  imports = [
    ./vscode
  ];

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    obsidian # Notes and organisation (unfree)
    # stremio # Media (unfree)
    # ytui-music # Youtube music CLI
    # legcord # Discord
    # prismlauncher # Minecraft
    # godot # Configurer au prochain projet
    # gimp3 # Image manipulation
    # auto-multiple-choice # Creation et correction de QCM
    # scrcpy # Android display and control over USB
  ];

  programs.firefox.enable = true;

  # programs.steam.enable = true; Pas avant le CAPES ! è_é
}
