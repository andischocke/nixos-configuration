{
  flake.nixosModules.configuration =
    {
      pkgs,
      ...
    }:

    {
      environment = {
        sessionVariables = {
          SKIM_DEFAULT_OPTIONS = "--ansi --border=plain --color=catppuccin-mocha --layout=reverse-list --multi";
        };

        shellAliases = {
          cat = "bat";
          du = "dust --depth=2 --reverse";
          find = "fd --hidden --no-ignore";
          grep = "rg";
          #ls = "eza --color=always --git --group-directories-first --header --icons --long --time-style=long-iso";
        };

        systemPackages = with pkgs; [
          delta
          dust
          eza
          fd
          herdr-desktop
          #ripgrep
          
          cups-pk-helper
          github-desktop
        ];

        variables = {
          EDITOR = "hx";
          VISUAL = "zeditor";
        };
      };
    };
}
