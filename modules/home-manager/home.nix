{
  flake.homeModules.home = {
    home = {
      homeDirectory = "/home/andreas";
      stateVersion = "26.05";
      username = "andreas";

      sessionVariables = {
        RIPGREP_CONFIG_PATH = "\${HOME}/.config/ripgrep/ripgreprc";
      };
    };
    programs.home-manager.enable = true;
  };
}
