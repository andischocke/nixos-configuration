{
  flake.homeModules.herdr = {
    programs.herdr = {
      enable = true;

      mutableSettings = false;

      settings = {
        onboarding = false;
        terminal = {
          new_cwd = "follow";
          shell_mode = "auto";
        };
        theme = {
          auto_switch = true;
          dark_name = "catppuccin";
          light_name = "catppuccin-latte";
          name = "catppuccin";
        };
        ui = {
          sidebar_collapsed_mode = "compact";
          sidebar_start_collapsed = true;
          sound = {
            enabled = true;
          };
          toast = {
            delivery = "herdr";
          };
        };
        update = {
          manifest_check = true;
          version_check = true;
        };
      };
    };
  };
}
