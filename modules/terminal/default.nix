{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    pkgs.uutils-coreutils-noprefix
    pkgs.gitui
    pkgs.fselect
    pkgs.lf
  ];
  
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    vimAlias = true;
  };
  programs.zoxide.enable = true;
  programs.zsh = {
    enable = true;
    shellAliases = {
      rebuild-system = "~/.system/rebuild-system.sh";
      rebuild-home = "~/.system/rebuild-home.sh";
    };
  };
}
