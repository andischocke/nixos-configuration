{
  flake.homeModules.television =
    {
      pkgs,
      ...
    }:

    {
      programs.television = {
        enable = true;
        enableBashIntegration = true;

        settings = {
          theme = "catppuccin";
        };
      };
    };
}
