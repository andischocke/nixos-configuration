{
  flake.nixosModules.configuration = {
    networking = {
      hostName = "nixos";

      networkmanager = {
        enable = true;

        logLevel = "WARN";
        wifi = {
          backend = "iwd";
          macAddress = "preserve";
          scanRandMacAddress = true;
        };
      };
    };
  };
}
