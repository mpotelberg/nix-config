{
  pkgs,
  config,
  ...
}: {
  xdg.configFile."lf/icons".source = ./icons;

  programs.lf = {
    # Help : https://www.youtube.com/watch?v=z8y_qRUYEWU
    enable = true;

    commands = {
      dragon-out = ''%${pkgs.xdragon}/bin/xdragon -a -x "$fx"'';
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
      hidden = true;
      drawbox = true;
      # icons = true; Need nerdfonts
      ignorecase = true;
    };
  };
}
