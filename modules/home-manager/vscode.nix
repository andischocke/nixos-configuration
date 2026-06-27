{
  flake.homeModules.vscode =
    {
      pkgs,
      ...
    }:

    {
      programs.vscode = {
        enable = true;
        package = pkgs.vscode;

        profiles.default = {
          extensions = [
            pkgs.vscode-extensions.github.copilot-chat
            pkgs.vscode-extensions.jnoortheen.nix-ide
            pkgs.vscode-extensions.redhat.vscode-xml
          ];

          userSettings = {
            # Text Editor
            editor = {
              formatOnPaste = true;
              formatOnSave = true;
            };
            # Chat
            chat = {
              mcp = {
                access = "all";
                collisionBehavior = "disable";
                gallery.enabled = true;
                apps.enabled = true;
                autostart = "newAndOutdated";
              };
            };
            # Application
            telemetry.feedback.enabled = false;
            # Extensions
            nix = {
              enableLanguageServer = true;
              serverPath = "nixd";
              serverSettings = {
                nixd = {
                  formatting.command = [ "nixfmt" ];
                };
              };
            };
          };
        };
      };
    };
}
