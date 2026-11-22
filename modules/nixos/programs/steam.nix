{
  flake.nixosModules.configuration =
    {
      pkgs,
      ...
    }:

    {
      programs.steam = {
        enable = true;
        package = pkgs.steam.override {
          extraCompatPackages = with pkgs; [
            proton-cachyos-bin
          ];
          extraEnv = {
            GAMEMODERUN = "1";
          };

        };
      };
    };
}
