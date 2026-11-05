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
