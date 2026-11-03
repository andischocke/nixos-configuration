{
  lib,
  pkgs,
  ...
}:

{
  flake.nixosModules.configuration = {
    programs.bat = {
      enable = true;

      extraPackages = with pkgs.bat-extras; [
        batdiff
        batgrep
        batman
        batpipe
        batwatch
        prettybat
      ];
    };
  };
}
