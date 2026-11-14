{
  flake.nixosModules.configuration =
    {
      pkgs,
      ...
    }:

    {
      hardware = {
        bluetooth = { 
          enable = true;
          powerOnBoot = true;
          settings = {
            General = {
              ControllerMode = "dual";
              Experimental = true;
              FastConnectable = true;
              FilterDiscoverable = true;
              KernelExperimental = true;
              NameResolving = true;
              SecureConnections = "on";
              # Timeouts
              DiscoverableTimeout = 60;
              PairableTimeout = 60;
              TemporaryTimeout = 30;
            };
            Policy = {
              AutoEnable=true;
              ReconnectAttempts = 8;
              ReconnectIntervals = "1,2,4,8,16,32,64,128";
              ResumeDelay = 4;
            };
          };
        };

        facter = {
          enable = true;
          reportPath = /etc/nixos/facter.json;
        };
        
        graphics = {
          enable = true;
          enable32Bit = true;
        };
      };
    };
}
