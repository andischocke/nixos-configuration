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
          general = {
            desiredgov = "performance";
            igpu_desiredgov = "powersave";
            igpu_power_threshold = -1;
            inhibit_screensaver = 1;
            renice = 10;
          };

          gpu = {

          };
        };
      };
    };
}
