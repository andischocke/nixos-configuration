{
  flake.homeModules.ghostty = {
    programs.ghostty = {
      enable = true;

      settings = {
        theme = "catppuccin-mocha";
      };
    };
  };
}
