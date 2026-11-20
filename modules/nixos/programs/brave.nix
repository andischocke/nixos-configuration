{
  flake.nixosModules.configuration =
    {
      pkgs,
      ...
    }:

    {
      programs.brave = {
        enable = true;
        package = pkgs.brave-origin;
        policies = {
          DiskCacheSize = 31457280;
        };
      };
    };
}
