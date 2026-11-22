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
          custom = {
            start = "${pkgs.libnotify}/bin/notify-send 'GameMode started'";
            end = "${pkgs.libnotify}/bin/notify-send 'GameMode ended'";
          };

          general = {
            desiredgov = "performance";
            igpu_desiredgov = "powersave";
            igpu_power_threshold = -1;
            inhibit_screensaver = 1;
            renice = 10;
          };
        };
      };
    };
}
