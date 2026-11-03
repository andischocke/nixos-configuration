{
  flake.homeModules.niri =
    {
      pkgs,
      ...
    }:

    {
      wayland.windowManager.niri = {
        enable = true;
      };
    };
}
