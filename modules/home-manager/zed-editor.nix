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
          #General
          session = {
            trust_all_worktrees = true;
          };
          telemetry = {
            anthropic_retention = false;
            diagnostics = false;
            metrics = false;
          };
          #Appearance
          theme = {
            mode = "system";
            light = "Catppuccin Latte";
            dark = "Catppuccin Mocha";
          };
          icon_theme = {
            mode = "system";
            light = "Catppuccin Latte";
            dark = "Catppuccin Mocha";
          };
          #Languages & Tools
          languages = {
            Nix = {
              format_on_save = "on";
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
        };
      };
    };
}
