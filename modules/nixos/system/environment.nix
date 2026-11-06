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
          find = "fd --hidden --no-ignore";
          grep = "rg --hidden --no-ignore --pretty --search-zip --smart-case";
          ls = "eza --git --group-directories-first --header --icons --long --time-style=long-iso";
        };

        systemPackages = with pkgs; [
          dust
          eza
          fd
          ripgrep

          alacritty
          cups-pk-helper
          fuzzel
          github-desktop
        ];
      };
    };
}
