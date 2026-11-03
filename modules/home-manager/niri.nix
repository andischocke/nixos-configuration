{
  flake.homeModules.niri =
    {
      pkgs,
      ...
    }:

    {
      programs.vscode = {
        enable = true;
      };
    };
}
