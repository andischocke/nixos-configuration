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
          NewTabPageLocation = "chrome://newtab";
          RestoreOnStartup = 1;
          ShowHomeButton = true;

          # Privacy and security
          MetricsReportingEnabled = false;

          DefaultGeolocationSetting = 2;
          PreciseGeolocationAllowedForUrls = [
            "https://www.google.com"
          ];

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
          DiskCacheSize = 30 * 1024 * 1024;
          HighEfficiencyModeEnabled = true;
          MemorySaverModeSavings = 2;
        };
      };
    };
}
