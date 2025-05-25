{
  config,
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    pkgs.uutils-coreutils-noprefix # Upgrade to default utils
    pkgs.fselect # Find files with SQL query
  ];

  programs.neovim = {
    # Text editor
    enable = true;
    vimAlias = true;
  };
  programs.gitui.enable = true; # Git interface
  programs.zoxide.enable = true; # Suggestion
  programs.zsh = {
    # Alternative terminal
    enable = true;
    shellAliases = {
      rebuild-system = "~/.system/rebuild-system.sh";
      rebuild-home = "~/.system/rebuild-home.sh";
    };
  };
}
