{
  flake.nixosModules.configuration =
    {
      pkgs,
      ...
    }:

    {
      programs.brave = {
        enable = true;
        package = pkgs.brave-origin;

        extensions = [
          # Bitwarden Password Manager
          "nngceckbapebfimnlniiiahkandclblb"
        ];

        policies = {
          DiskCacheSize = 31457280;
          HighEfficiencyModeEnabled = true;
          MemorySaverModeSavings = 2;
          MetricsReportingEnabled = false;
        };
      };
    };
}
