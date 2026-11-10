{
  flake.homeModules.helix =
    {
      pkgs,
      ...
    }:

    {
      programs.helix = {
        enable = true;

        defaultEditor = true;
        settings = {
          editor = {
            auto-completion = true;
            auto-format = true;
            auto-info = true;
            auto-pairs = true;
            line-number = "relative";
            path-completion = true;
            true-color = true;
          };

          theme = "catppuccin_mocha";
        };
      };
    };
}
