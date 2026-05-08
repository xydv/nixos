{...}:

{
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "aditya";
    users = {
      aditya = import ./aditya.nix;
    };
  };
}
