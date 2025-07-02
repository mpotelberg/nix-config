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

  boot.initrd.luks.devices."luks-74ac37d1-72fa-4ae2-a5d8-d0c34f814a8e".device = "/dev/disk/by-uuid/74ac37d1-72fa-4ae2-a5d8-d0c34f814a8e";
  networking.hostName = "laptop"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Sleep on close lid (to avoid chromebook bug)
  services.logind.lidSwitch = "sleep";

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
