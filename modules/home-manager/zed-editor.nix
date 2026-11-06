{
  flake.homeModules.zed-editor = {
    programs.zed-editor = {
      enable = true;

      extensions = [
        "nix"
      ];

      userSettings = {
        session = {
          trust_all_worktrees = true;
        };
        telemetry = {
          anthropic_retention = false;
          diagnostics = false;
          metrics = false;
        };
      };
    };
  };
}
