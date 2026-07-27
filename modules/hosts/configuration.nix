{
  flake.nixosModules.configuration =
    {
      pkgs,
      ...
    }:

    {
      networking.hostName = "nixos"; # Define your hostname.
      # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

      # Configure network proxy if necessary
      # networking.proxy.default = "http://user:password@proxy:port/";
      # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

      # Enable networking
      networking.networkmanager.enable = true;

      # Configure keymap in X11
      services.xserver.xkb = {
        layout = "de";
        variant = "";
      };

      # Configure console keymap
      console.keyMap = "de";

      services.xserver.videoDrivers = [
        #"amdgpu"
      ];

      users = {
        mutableUsers = false;
        
        users.andreas = {
          description = "Andreas Henneberger";
          hashedPassword = "$y$j9T$O1jkC4bqmVIVy9.2Y947T.$EELekbygdNm4s8Yyyzv9MgrTQlwqqrtSBnSkWGAK1X2";
          isNormalUser = true;
          
          extraGroups = [
            "networkmanager"
            "wheel"
            ];
          };
        };
      };

      # Allow unfree packages
      nixpkgs.config.allowUnfree = true;

      # List packages installed in system profile. To search, run:
      # $ nix search wget
      environment.systemPackages = with pkgs; [
        alacritty
        cups-pk-helper
        fuzzel
        github-desktop
        mcp-nixos
        nixd
        nixfmt
        tree
      ];

      # List services that you want to enable:

      # Enable the OpenSSH daemon.
      services.openssh.enable = true;

      # Open ports in the firewall.
      # networking.firewall.allowedTCPPorts = [ ... ];
      # networking.firewall.allowedUDPPorts = [ ... ];
      # Or disable the firewall altogether.
      # networking.firewall.enable = false;

      # This value determines the NixOS release from which the default
      # settings for stateful data, like file locations and database versions
      # on your system were taken. It‘s perfectly fine and recommended to leave
      # this value at the release version of the first install of this system.
      # Before changing this value read the documentation for this option
      # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
      system.stateVersion = "25.11"; # Did you read the comment?
    };
}
