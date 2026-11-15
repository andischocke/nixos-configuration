{
  flake.homeModules.ghostty =
    { pkgs, ... }:

    {
      programs.ghostty = {
        enable = true;

        settings = {
          command = "${pkgs.nushell}/bin/nu";
          # theme = "noctalia";
        };
      };
    };
}
