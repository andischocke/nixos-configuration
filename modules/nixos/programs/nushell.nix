{
  flake.nixosModules.configuration =
    {
      pkgs,
      ...
    }:

    {
      programs.nushell = {
        enable = true;

        plugins = with pkgs.nushellPlugins; [

        ];
      };
    };
}
