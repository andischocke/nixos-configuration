{
  flake.homeModules.zed-editor =
    {
      pkgs,
      ...
    }:

    {
      programs.zed-editor = {
        enable = true;

        extensions = [
          "catppuccin"
          "csv"
          "log"
          "nix"
          "sql"
          "xml"
        ];

        extraPackages = with pkgs; [
          alejandra
          nixd
          sqruff
        ];

        userSettings = {
          languages = {
            Nix = {
              formatter = {
                external = {
                  command = "alejandra";
                  arguments = [ "--quiet" ];
                };
              };
              language_servers = [ "nixd" ];
            };

            SQL = {
              formatter = {
                language_server = {
                  name = "sqruff";
                };
              };
              language_servers = [ "sqruff" ];
            };
          };

          lsp = {
            nixd = { };
            sqruff = { };
          };

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
