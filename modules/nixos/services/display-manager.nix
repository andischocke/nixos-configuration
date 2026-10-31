{
  flake.nixosModules.configuration = {
    services.displayManager = {
      enable = true;
      logToJournal = true;

      noctalia-greeter = {
        enable = true;
        settings = {
          clock = {
            date_format = "%A, %F";
            time_format = "%T";
          };
        };
      };
    };
  };
}
