{ config, lib, pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions ; [
    #  aaron-bond.better-comments
    #  ms-python.python
    #  ms-python.debugpy
    #  ms-python.black-formatter
    #  # godot-tools
    #  pkief.material-icon-theme
    #  pkief.material-product-icons
    #  mechatroner.rainbow-csv
    #  myriad-dreamin.tinymist
    #  tomoki1207.pdf
    ];
  };
}
