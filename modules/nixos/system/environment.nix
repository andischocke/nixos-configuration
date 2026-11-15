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
          ls = "eza --git --group-directories-first --header --icons=always --long --time-style=long-iso";
        };

        systemPackages = with pkgs; [
          delta
          dust
          eza
          fd
          ghostty
          ripgrep
        ];

        variables = {
          EDITOR = "hx";
          VISUAL = "zeditor";
        };
      };
    };
}
