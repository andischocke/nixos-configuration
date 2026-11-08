{
  flake.homeModules.zed-editor =
    {
      pkgs,
      ...
    }:

    {
      programs.helix = {
        enable = true;
      };
    };
}
