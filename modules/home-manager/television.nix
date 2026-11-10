{
  flake.homeModules.television =
    {
      pkgs,
      ...
    }:

    {
      programs.television = {
        enable = true;
        enableBashIntegration = true;

        channels = {
          files = {
            metadata = {
              name = "files";
              description = " A channel to select files";
              requirements = [ "bat" "fd"];
            };
            source = {
              command = [
                {
                  name = "Default";
                  run = "fd --type f";
                }
                { 
                  name = "Hidden";
                  run = "fd --type f --hidden";
                }
              ];
            };
            preview = {
              command = "bat {}";
            };
            keybindings = {
              ctrl-down = "actions:edit";
              ctrl-up = "actions:parent";
            };
            actions = { 
              edit = { 
                description = "Edit the file with the default editor";
                command = "\${EDITOR} {}";
                mode = "execute";
              };
              parent = {
                description = "Go to the parent directory";
                command = "tv files ..";
                mode = "execute";
              };
            };
          };
        };
        

        settings = {
          ui = {
            theme = "catppuccin";
          };
        };
      };
    };
}
