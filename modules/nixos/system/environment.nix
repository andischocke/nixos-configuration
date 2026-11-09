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
          grep = "rg --hidden --no-ignore --pretty --search-zip --smart-case";
          ls = "eza --git --group-directories-first --header --icons --long --time-style=long-iso";
        };

        systemPackages = with pkgs; [
          alacritty
          delta
          dust
          eza
          fd
          mission-center
          ripgrep
          
          cups-pk-helper
          fuzzel
          github-desktop
        ];
      };
    };
}
