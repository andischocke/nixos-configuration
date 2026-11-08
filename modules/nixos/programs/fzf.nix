{
  flake.nixosModules.configuration = {
    programs.fzf = {
      fuzzyCompletion = true;
      keybindings = false;
    };
  };
}
