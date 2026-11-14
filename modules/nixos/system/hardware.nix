{
  flake.nixosModules.configuration =
    {
      pkgs,
      ...
    }:

    {
      hardware = {
        bluetooth = { 
          enable = true;
          powerOnBoot = false;
        };
      };
    };
}
