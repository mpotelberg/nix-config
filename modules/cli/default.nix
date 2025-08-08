{pkgs, ...}: {
  home.packages = with pkgs; [
    uutils-coreutils-noprefix # Upgrade to default utils
    # fselect # Find files with SQL query
    wget # File download
    python314 # Python
    unrar # Rar decompression
    unzip
    typst
    typst-live
    wifi-qr
  ];

  programs = {
    bash = {
      # Terminal
      enable = true;
      shellAliases = {
        rebuild = "bash ~/.nix-config/rebuild.sh";
        testbuild = "bash ~/.nix-config/testbuild.sh";
      };
    };

    micro.enable = true;

    # zoxide.enable = true; # Suggestion

    ssh.enable = true;

    git = {
      enable = true;
      userName = "mpotelberg";
      userEmail = "maximepotelberg@gmail.com";
    };

    gitui.enable = true; # Git interface

    lf = {
      # Help : https://www.youtube.com/watch?v=z8y_qRUYEWU
      enable = true;
      commands = {
        editor-open = ''$$EDITOR $f'';
        mkdir = ''
          ''${{
            printf "Directory Name:
            read DIR
            mkdir $DIR
          }}
        '';
      };
      settings = {
        preview = true;
        drawbox = true;
        ignorecase = true;
      };
    };
  };

  home.sessionVariables = {
    EDITOR = "micro";
  };
}
