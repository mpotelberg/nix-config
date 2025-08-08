{pkgs, ...}: {
  imports = [
    ./vscode
  ];

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    obsidian # Notes and organisation (unfree)
    libreoffice # Office suite
    youtube-music # Youtube music client
    wasistlos # Whatsapp client
    zeal # Offline programmation documentation
    # filezilla # FTP Client
    # stremio # Media (unfree)
    # godot # Configurer au prochain projet
    # gimp3 # Image manipulation
    # auto-multiple-choice # Creation et correction de QCM
    # scrcpy # Android display and control over USB
    (discord.override {
      withOpenASAR = true;
      withVencord = true;
    })
    protonmail-desktop # Proton mail and calendar
    proton-pass # Proton password manager
    protonvpn-gui # Proton vpn
    freecad # CAD Software
    typstwriter # Typst editor and live previewer
  ];

  programs.firefox.enable = true; # Web browser
}
