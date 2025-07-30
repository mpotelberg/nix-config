{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix

    ./../shared/configuration.nix
  ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.initrd.luks.devices."luks-dbfce2e5-1709-491f-bbda-e6b002446fc7".device = "/dev/disk/by-uuid/dbfce2e5-1709-491f-bbda-e6b002446fc7";
  networking.hostName = "laptop"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Sleep on close lid (to avoid chromebook bug)
  # services.logind.lidSwitch = "sleep";

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "be";
    # variant = "nodeadkeys";
  };

  # Configure console keymap
  console.keyMap = "be-latin1";

  # Define a user account.
  users.users.maxlamenace = {
    isNormalUser = true;
    description = "Max la Menace";
    extraGroups = ["networkmanager" "wheel"];
  };

  # Setup home manager
  home-manager = {
    # Pass inputs to home-manager modules
    extraSpecialArgs = {inherit inputs;};
    users = {
      "maxlamenace" = import ./home.nix;
    };
  };
}
