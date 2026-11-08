{
  flake.nixosModules.configuration =
    {
      pkgs,
      ...
    }:

    {
      environment = {
        shellAliases = {
          cat = "bat";
          du = "dust --depth=2 --reverse";
          find = "fd --hidden --no-ignore";
          grep = "rg --hidden --no-ignore --pretty --search-zip --smart-case";
          ls = "eza --git --group-directories-first --header --icons --long --time-style=long-iso";
        };

        systemPackages = with pkgs; [
          delta
          dust
          eza
          fd
          fzf
          ripgrep

          alacritty
          cups-pk-helper
          fuzzel
          github-desktop
        ];
      };
    };
}
