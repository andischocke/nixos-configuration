{
  flake.nixosModules.configuration = {
    nix = {
      enable = true;

      gc = {
        automatic = true;
        dates = "weekly";
        options = "--delete-older-than 7d";
        persistent = true;
      };

      optimise = {
        automatic = true;
        dates = "weekly";
        persistent = true;
      };

      settings = {
        experimental-features = [
          "flakes"
          "nix-command"
        ];
      };
    };
  };
}
