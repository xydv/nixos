{ pkgs, inputs, ...}:

{
  imports = [
    ./hardware-configuration.nix
    ./system
    ./home/manager.nix
    ./services
    ./programs
    ./hardware
  ];

  security.rtkit.enable = true;
  security.polkit.enable = true;

  users.users.aditya = {
    isNormalUser = true;
    description = "aditya";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
    ];
  };

  environment.systemPackages = with pkgs; [
    bemenu
    telegram-desktop
    (discord.override {
      withOpenASAR = true;
    })
    helix
    bruno
    chromium
    kdePackages.kdenlive
    antigravity
    zed-editor
    devenv
    nixd
    inputs.pano-scrobbler.packages."x86_64-linux".default
  ];
}
