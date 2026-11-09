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
          ui = {
            theme = "catppuccin";
          };
        };
      };
    };
}
