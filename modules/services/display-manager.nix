{
  flake.nixosModules.configuration = {
    services.displayManager.dux-greeter = {
      enable = true;

      compositor = {
        name = "niri";
      };
      logs = {
        path = "/var/log/dux-greeter.log";
        save = true;
      };
    };
  };
}
