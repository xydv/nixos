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

  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

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
    inputs.pano-scrobbler.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
