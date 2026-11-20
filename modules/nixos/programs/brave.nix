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
          MetricsReportingEnabled = false;

          # Site settings
          DefaultGeolocationSetting = 2;
          PreciseGeolocationAllowedForUrls = [
            "https://www.google.com"
          ];
          DefaultImagesSetting = 1;
          DefaultJavaScriptSetting = 1;
          DefaultJavaScriptOptimizerSetting = 1;
          DefaultNotificationsSetting = 2;
          DefaultPopupsSetting = 2;

          # Autofill and passwords
          AutofillSettings = [
            {
              url_pattern = "*";
              blocked_types = [
                "contact_info"
                "payments"
              ];
            }
          ];
          PasswordManagerEnabled = false;

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
