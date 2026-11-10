{
  flake.nixosModules.configuration =
    {
      pkgs,
      ...
    }:

    {
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

        settings = {
          color = "always";
          decorations = "always";
          pager = "less";
          paging = "auto";
          style = "full";
          theme = "dark";
          theme-dark = "Catppuccin Mocha";
          theme-light = "Catppuccin Latte";
          wrap = "auto";
        };
      };
    };
}
