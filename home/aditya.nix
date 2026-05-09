{ pkgs, ... }:

{
  home.username = "aditya";
  home.homeDirectory = "/home/aditya";
  home.stateVersion = "25.11";

  home.packages = with pkgs.unstable; [
    pear-desktop
  ];

  imports = [
    ./programs
  ];
}
