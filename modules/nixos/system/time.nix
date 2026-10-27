{
  flake.nixosModules.configuration = {
    time = {
      hardwareClockInLocalTime = false;
      timeZone = "Europe/Berlin";
    };
  };
}
