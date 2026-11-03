{
  flake.nixosModules.configuration =
    {
      pkgs,
      ...
    }:

    {
      environment = {
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
