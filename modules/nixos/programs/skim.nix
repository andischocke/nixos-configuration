{
  flake.nixosModules.configuration = {
    programs.skim = {
      enable = true;
      keybindings = false;
    };
  };
}
