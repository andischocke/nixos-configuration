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

        channels = { 
          files = { 
            preview = { 
              env = { 
                BAT_THEME = "Catppuccin Mocha";
              }
            };
          };
        };

        settings = {
          ui = {
            theme = "catppuccin";
          };
        };
      };
    };
}
