{
  flake.homeModules.home = {
    home = {
      homeDirectory = "/home/andreas";
      stateVersion = "26.05";
      username = "andreas";
    };
    programs.bash.enable = true;
    programs.home-manager.enable = true;
  };
}
