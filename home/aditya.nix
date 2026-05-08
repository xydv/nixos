{...}:

{
  home.username = "aditya";
  home.homeDirectory = "/home/aditya";
  home.stateVersion = "25.11";

  imports = [
    ./programs/gh.nix
    ./programs/git.nix
    ./programs/zed.nix
  ];
}
