{
  flake.homeModules.helix =
    {
      pkgs,
      ...
    }:

    {
      programs.helix = {
        enable = true;

        settings = {
          theme = "catppuccin_mocha";
        };
      };
    };
}
