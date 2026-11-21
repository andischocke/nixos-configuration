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
          # Startup, Home page and New Tab page
          HomepageIsNewTabPage = true;
          RestoreOnStartup = 1;
          ShowHomeButton = true;

          # Privacy and security
          BlockThirdPartyCookies = true;
          MetricsReportingEnabled = false;

          # Languages
          ForcedLanguages = [
            "en-US"
            "de-DE"
          ];
          SpellcheckEnabled = true;
          SpellcheckLanguage = [
            "en-US"
            "de-DE"
          ];
          TranslateEnabled = true;

          # System
          BackgroundModeEnabled = false;
          DiskCacheSize = 30 * 1024 * 1024;
          HighEfficiencyModeEnabled = true;
          MemorySaverModeSavings = 2;
        };
      };
    };
}
