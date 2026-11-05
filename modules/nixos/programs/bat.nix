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
          italic-text = "always";
          pager = "less";
          paging = "auto";
          sanitize = "auto";
          strip-ansi = "auto";
          style = "full";
          theme = "auto";
          theme-dark = "Catppuccin Mocha";
          theme-light = "Catppuccin Latte";
          wrap = "auto";
        };
      };
    };
}
