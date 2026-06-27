{
  flake.nixosModules.configuration = {
    services.displayManager.dms-greeter = {
      enable = true;

      compositor = {
        name = "niri";
      };
    };
  };
}
