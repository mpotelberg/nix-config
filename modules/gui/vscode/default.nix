{
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    pkgs.alejandra # Nix LSP
  ];

  home.file = {
    ".config/VSCodium/User/settings.json".source = ./settings.json;
  };

  programs.vscode = {
    enable = true;

    package = pkgs.vscodium;

    profiles.default.extensions = with inputs.nix-vscode-extensions.extensions.x86_64-linux.open-vsx; [
      # Theme
      zhuangtongfa.material-theme
      pkief.material-icon-theme
      pkief.material-product-icons

      # General tools
      aaron-bond.better-comments
      mechatroner.rainbow-csv
      tomoki1207.pdf
      medo64.render-crlf
      richie5um2.vscode-sort-json

      # Language tools
      ms-python.python
      ms-python.debugpy
      ms-python.black-formatter
      nvarner.typst-lsp
      myriad-dreamin.tinymist
      jnoortheen.nix-ide
      # godot-tools
    ];
  };
}
