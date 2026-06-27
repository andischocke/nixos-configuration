{
  flake.nixosModules.configuration = {
    programs.firefox = {
      enable = true;

      policies = {
        AIControls = {
          Default = {
            Value = "available";
            Locked = true;
          };
          Translations = {
            Value = "available";
            Locked = true;
          };
          PDFAltText = {
            Value = "available";
            Locked = true;
          };
          SmartTabGroups = {
            Value = "available";
            Locked = true;
          };
          LinkPreviewKeyPoints = {
            Value = "blocked";
            Locked = true;
          };
          SidebarChatbot = {
            Value = "blocked";
            Locked = true;
          };
        };
        AutofillAddressEnabled = false;
        AutofillCreditCardEnabled = false;
        DisableFirefoxStudies = true;
        DisableMasterPasswordCreation = true;
        DisableProfileImport = true;
        DisableRemoteImprovements = true;
        DisableTelemetry = true;
        DisplayMenuBar = "never";
        DNSOverHTTPS = {
          Enabled = true;
          Fallback = true;
          Locked = true;
        };
        DontCheckDefaultBrowser = true;
        EnableTrackingProtection = {
          Value = true;
          Category = "strict";
          BaselineExceptions = true;
          ConvenienceExceptions = true;
          Locked = true;
        };
        ExtensionSettings = {
          "{446900e4-71c2-419f-a6a7-df9c091e268b}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/bitwarden-password-manager/latest.xpi";
            installation_mode = "force_installed";
            private_browsing = true;
          };
          "uBlock0@raymondhill.net" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
            installation_mode = "force_installed";
            private_browsing = true;
          };
        };
        FirefoxHome = {
          Search = true;
          TopSites = true;
          SponsoredTopSites = false;
          Highlights = false;
          Locked = true;
        };
        ManagedBookmarks = [
          {
            name = "NixOS";
            url = "https://nixos.org/";
          }
          {
            name = "NixOS Search";
            url = "https://search.nixos.org/";
          }
          {
            name = "NixOS Wiki";
            url = "https://wiki.nixos.org/";
          }
          {
            name = "Nix Development";
            url = "https://nix.dev/";
          }
          {
            name = "Flake Parts";
            url = "https://flake.parts/";
          }
        ];
        NoDefaultBookmarks = true;
        PasswordManagerEnabled = false;
        Permissions = {
          Location = {
            Allow = [
              "https://www.google.com"
            ];
            BlockNewRequests = true;
            Locked = true;
          };
          Notifications = {
            BlockNewRequests = true;
            Locked = true;
          };
          VirtualReality = {
            BlockNewRequests = true;
            Locked = true;
          };
        };
        UserMessaging = {
          ExtensionRecommendations = false;
          FeatureRecommendations = false;
          FirefoxLabs = false;
          MoreFromMozilla = false;
          SkipOnboarding = true;
          UrlbarInterventions = false;
          Locked = true;
        };
      };

      preferences = {
        "browser.ctrlTab.sortByRecentlyUsed" = false;
        "browser.link.open_newwindow" = 3;
        "browser.link.open_newwindow.override.external" = 7;
        "browser.startup.page" = 3;
        "browser.tabs.dragDrop.createGroup.enabled" = true;
        "browser.tabs.hoverPreview.showThumbnails" = true;
        "browser.tabs.loadInBackground" = true;
        "browser.tabs.warnOnClose" = false;
        "browser.warnOnQuitShortcut" = false;
      };

      preferencesStatus = "locked";
    };
  };
}
