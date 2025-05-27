{
  pkgs,
  config,
  ...
}: {
  programs.lf = {
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
}
