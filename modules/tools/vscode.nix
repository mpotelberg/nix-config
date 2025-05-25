{
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    pkgs.alejandra # Nix LSP
  ];

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

    profiles.default.userSettings = {
      "[python]" = {
        "editor.defaultFormatter" = "ms-python.black-formatter";
      };
      "chat.commandCenter.enabled" = false;
      "editor.cursorBlinking" = "phase";
      "editor.cursorSmoothCaretAnimation" = "on";
      "editor.detectIndentation" = false;
      "editor.fontFamily" = "Ubuntu Mono";
      "editor.fontSize" = 16;
      "editor.formatOnSave" = true;
      "editor.hideCursorInOverviewRuler" = true;
      "editor.indentSize" = 4;
      "editor.lightbulb.enabled" = "off";
      "editor.minimap.autohide" = false;
      "editor.minimap.scale" = 2;
      "editor.multiCursorModifier" = "ctrlCmd";
      "editor.occurrencesHighlight" = "off";
      "editor.renderControlCharacters" = true;
      "editor.renderLineHighlight" = "none";
      "editor.renderWhitespace" = "trailing";
      "editor.scrollbar.horizontal" = "hidden";
      "editor.scrollbar.vertical" = "hidden";
      "editor.selectionHighlight" = false;
      "editor.semanticHighlighting.enabled" = false;
      "editor.smoothScrolling" = true;
      "editor.tokenColorCustomizations" = {
        "textMateRules" = [
          {
            "name" = "No random red variables";
            "scope" = [
              "variable"
            ];
            "settings" = {
              "foreground" = "#abb2bf";
            };
          }
        ];
      };
      "editor.wordWrap" = "on";
      "explorer.compactFolders" = false;
      "explorer.confirmDragAndDrop" = false;
      "explorer.decorations.badges" = false;
      "explorer.sortOrder" = "type";
      "extensions.ignoreRecommendations" = true;
      "files.insertFinalNewline" = true;
      "files.trimFinalNewlines" = true;
      "files.trimTrailingWhitespace" = true;
      "git.decorations.enabled" = false;
      "git.ignoreLimitWarning" = true;
      "material-icon-theme.files.customClones" = [
        {
          "base" = "stryker";
          "color" = "limegreen";
          "fileNames" = [
            ".compiletargets"
          ];
          "name" = "compile-targets";
        }
        {
          "base" = "stryker";
          "color" = "orangered";
          "fileNames" = [
            ".compileignore"
          ];
          "name" = "compile-ignores";
        }
      ];
      "material-icon-theme.folders.theme" = "classic";
      "material-icon-theme.hidesExplorerArrows" = true;
      "nix.formatterPath" = "alejandra";
      "python.defaultInterpreterPath" = "";
      "scm.diffDecorations" = "none";
      "terminal.integrated.cursorBlinking" = true;
      "terminal.integrated.smoothScrolling" = true;
      "tinymist.formatterIndentSize" = 4;
      "update.mode" = "none";
      "window.commandCenter" = false;
      "window.menuBarVisibility" = "toggle";
      "window.zoomLevel" = 1;
      "workbench.activityBar.location" = "bottom";
      "workbench.colorTheme" = "One Dark Pro Night Flat";
      "workbench.editor.centeredLayoutAutoResize" = false;
      "workbench.editor.centeredLayoutFixedWidth" = true;
      "workbench.editor.enablePreview" = false;
      "workbench.editor.showTabs" = "single";
      "workbench.iconTheme" = "material-icon-theme";
      "workbench.layoutControl.enabled" = false;
      "workbench.list.smoothScrolling" = true;
      "workbench.productIconTheme" = "material-product-icons";
      "workbench.startupEditor" = "none";
      "workbench.statusBar.visible" = false;
      "workbench.tips.enabled" = false;
      "workbench.tree.enableStickyScroll" = false;
      "workbench.tree.indent" = 16;
      "workbench.tree.renderIndentGuides" = "onHover";
    };
  };
}
