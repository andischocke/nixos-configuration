{
  flake.homeModules.niri =
    {
      pkgs,
      ...
    }:

    {
      programs.niri = {
        enable = true;
      };
    };
}
