{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./git
    ./terminal.nix
    ./vscode.nix
  ];

  # home.packages = with pkgs; [];
}
