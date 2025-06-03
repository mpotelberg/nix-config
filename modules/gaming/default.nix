{pkgs, ...}: {
  # Must be imported by configuration.nix
  hardware.opengl = {
    enable = true;
  };

  nixpkgs.config.allowUnfree = true;

  programs.steam = {
    enable = true;
    # Help with upscaling/resolution issue, turn on by adding "gamescope %command% to launch options"
    # gamescopeSession.enable = true;
  };

  environment.systemPackages = with pkgs; [
    # Show computer stats during gameplay, turn on by adding "mangohud %command%" to launch options
    # mangohud
  ];

  # Set temporary system optimisations while the game is running, turn on by adding "gamemoderun %command%" to launch options
  programs.gamemode.enable = true;
}
