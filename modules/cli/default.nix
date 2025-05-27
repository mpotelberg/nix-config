{pkgs, ...}: {
  imports = [
    ./lf.nix
  ];

  home.packages = with pkgs; [
    pkgs.uutils-coreutils-noprefix # Upgrade to default utils
    # pkgs.fselect # Find files with SQL query
    pkgs.wget # File download
  ];

  programs.bash = {
    # Terminal
    enable = true;
    shellAliases = {
      rebuild = "bash ~/.nix-config/rebuild.sh";
    };
  };
  programs.micro.enable = true;
  # programs.zoxide.enable = true; # Suggestion
  programs.ssh.enable = true;

  programs.git = {
    enable = true;
    userName = "mpotelberg";
    userEmail = "maximepotelberg@gmail.com";
  };
  programs.gitui.enable = true; # Git interface

  home.sessionVariables = {
    EDITOR = "micro";
  };
}
