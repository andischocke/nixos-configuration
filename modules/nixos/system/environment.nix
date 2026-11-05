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
          ls = "eza --git --group-directories-first --header --long --time-style=long-iso";
        };

        systemPackages = with pkgs; [
          alacritty
          cups-pk-helper
          eza
          fuzzel
          github-desktop
          mcp-nixos
          nixd
          nixfmt
          tree
        ];
      };
    };
}
