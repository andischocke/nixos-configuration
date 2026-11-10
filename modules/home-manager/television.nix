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
          dirs = {
            metadata = {
              name = "dirs";
              description = " A channel to select directories";
              requirements = [ "eza" "fd" ];
            };
            source = {
              command = [
                {
                  name = "Default";
                  run = "fd --type d";
                }
                { 
                  name = "Hidden";
                  run = "fd --type d --hidden";
                }
              ];
            };
            preview = {
              command = "eza {}";
            };
            keybindings = {
              ctrl-down = "actions:enter";
              ctrl-up = "actions:parent";
            };
            actions = { 
              enter = { 
                description = "Enter the directory";
                command = "tv dirs {}";
                mode = "execute";
              };
              parent = {
                description = "Go to the parent directory";
                command = "tv dirs ..";
                mode = "execute";
              };
            };
          };

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
