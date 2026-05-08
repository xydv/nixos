{...}:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "aditya";
        email = "dedomil@tuta.io";
      };
    };
    # signing = {
    #   key = null;
    #   signByDefault = true;
    # };
  };
}
