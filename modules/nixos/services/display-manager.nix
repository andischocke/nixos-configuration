{
  flake.nixosModules.configuration = {
    services.displayManager.dux-greeter = {
      enable = true;

      compositor = {
        name = "niri";
      };
    };
  };
}
