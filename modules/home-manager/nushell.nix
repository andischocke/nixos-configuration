{
  flake.homeModules.terminal =
    {
      pkgs,
      ...
    }:

    {
      programs.nushell = {
        enable = true;

        plugins = with pkgs.nushellPlugins; [
          
        ];

        settings = {
          show_banner = false;
        };
      };
    };
}
