{
  flake.nixosModules.configuration = {
    services.displayManager = {
      enable = true;
      logToJournal = true;

      noctalia-greeter = {
        enable = true;
        settings = {
          
        };
      };
    };
  };
}
