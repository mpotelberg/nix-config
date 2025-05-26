{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./vscode.nix
  ];

  home.packages = with pkgs; [
    pkgs.obsidian # Notes and organisation
    # pkgs.godot # Configurer au prochain projet
    pkgs.gimp3 # Image manipulation
    pkgs.auto-multiple-choice # Creation et correction de QCM
  ];
}
