{
  flake.nixosModules.configuration =
    {
      pkgs,
      ...
    }:

    {
      programs.steam = {
        enable = true;
      };
    };
}
