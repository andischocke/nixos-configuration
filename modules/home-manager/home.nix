{
  flake.homeModules.home = {
    home = {
      homeDirectory = "/home/andreas";
      stateVersion = "26.11";
      username = "andreas";
    };
    programs.home-manager.enable = true;
  };
}
