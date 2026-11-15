{
  flake.homeModules.ghostty =
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
