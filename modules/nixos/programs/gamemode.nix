{
  flake.nixosModules.configuration =
    {
      pkgs,
      ...
    }:

    {
      programs.gamemode = {
        enable = true;
        enableRenice = true;

        settings = {
          
        };
      };
    };
}
