{
  flake.nixosModules.configuration = {
    services.displayManager.noctalia-greeter = {
      enable = true;
      settings = {
        clock = {
          date_format = "%A, %F";
          time_format = "%T";
        };
      };
    };
  };
}
