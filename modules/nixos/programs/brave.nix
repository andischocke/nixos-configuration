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
          DiskCacheSize = 30 * 1024 * 1024;
          HighEfficiencyModeEnabled = true;
          MemorySaverModeSavings = 2;
          MetricsReportingEnabled = false;

          # Startup, Home page and New Tab page
          ShowHomeButton = true;
          HomepageIsNewTabPage = true;
          RestoreOnStartup = 1;
        };
      };
    };
}
