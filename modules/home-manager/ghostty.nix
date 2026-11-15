{
  flake.homeModules.terminal =
    { pkgs, ... }:

    {
      programs.ghostty = {
        enable = true;

        settings = {
          # theme = "noctalia";
        };
      };
    };
}
