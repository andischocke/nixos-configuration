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
          ls = "eza --git --group-directories-first --header --icons --long --time-style=long-iso";
        };

        systemPackages = with pkgs; [
          eza
          ripgrep

          alacritty
          cups-pk-helper
          fuzzel
          github-desktop
          mcp-nixos
          nixd
          nixfmt
        ];
      };
    };
}
