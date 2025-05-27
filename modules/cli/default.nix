{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./lf.nix
  ];

  home.packages = with pkgs; [
    # inputs.pond # Frogs
    pkgs.uutils-coreutils-noprefix # Upgrade to default utils
    # pkgs.fselect # Find files with SQL query
    pkgs.wget # File download
  ];

  programs.micro.enable = true;

  programs.git = {
    enable = true;
    userName = "mpotelberg";
    userEmail = "maximepotelberg@gmail.com";
  };

  programs.gitui.enable = true; # Git interface
  # programs.zoxide.enable = true; # Suggestion

  programs.bash = {
    # Terminal
    enable = true;
    shellAliases = {
      rebuild = "bash ~/.nix-config/rebuild.sh";
    };
  };

  home.sessionVariables = {
    EDITOR = "micro";
  };
}
