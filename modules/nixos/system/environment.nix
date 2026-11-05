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
        };

        systemPackages = with pkgs; [
          alacritty
          cups-pk-helper
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
