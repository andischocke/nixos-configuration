{
  flake.homeModules.zed-editor =
    { pkgs, ... }:

    {
      programs.zed-editor = {
        enable = true;

        extensions = [
          "csv"
          "log"
          "nix"
        ];

        extraPackages = with pkgs; [
          nixd
        ];

        userSettings = {
          languages = {
            Nix = {
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
        };
      };
    };
}
