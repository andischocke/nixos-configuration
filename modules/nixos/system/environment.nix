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
          #grep = "rg --hidden --no-ignore --pretty --search-zip --smart-case --colors=path:fg:250,179,135 --colors=path:style:bold --colors=highlight:fg:205,214,244 --colors=match:fg:243,139,168 --colors=line:fg:166,173,200 --colors=column:fg:166,173,200";
          ls = "eza --color=always --git --group-directories-first --header --icons --long --time-style=long-iso";
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
