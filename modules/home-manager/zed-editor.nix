{
  flake.homeModules.zed-editor = {
    programs.zed-editor = {
      enable = true;

      extensions = [
        "csv"
        "env"
        "html"
        "ini"
        "log"
        "nix"
        "sql"
        "typst"
        "toml"
        "yara.zed"
        "xml"
      ];

      userSettings = {
        format_on_save = true;
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
