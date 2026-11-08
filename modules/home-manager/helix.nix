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
          editor = {
            true-color = true;
          };

          theme = "catppuccin_mocha";
        };
      };
    };
}
