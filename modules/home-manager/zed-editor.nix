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
          "catppuccin-icons"
          "csv"
          "log"
          "nix"
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
          };

          lsp = {
            nixd = { };
          };

          session = {
            trust_all_worktrees = true;
          };

          telemetry = {
            anthropic_retention = false;
            diagnostics = false;
            metrics = false;
          };

          theme = {
            mode = "system";
            dark = "Catppuccin Mocha";
            light = "Catppuccin Latte";
          };
        };
      };
    };
}
