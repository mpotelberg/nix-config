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

  boot.initrd.luks.devices."luks-a79b4ad7-8b72-40f2-ad6d-3e5b793b83e2".device = "/dev/disk/by-uuid/a79b4ad7-8b72-40f2-ad6d-3e5b793b83e2";
  networking.hostName = "desktop"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

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
