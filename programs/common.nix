{
  programs = {
    firefox.enable = true;
    nix-ld.enable = true;
    sway = {
      enable = true;
      wrapperFeatures.gtk = true;
    };
  };
}
