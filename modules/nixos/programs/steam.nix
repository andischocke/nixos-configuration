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
          extraEnv = {
            GAMEMODERUN = "1";
          };
        };

        extraCompatPackages = with pkgs; [
          proton-ge-bin
        ];
      };
    };
}
