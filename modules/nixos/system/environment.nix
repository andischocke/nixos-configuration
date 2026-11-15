{
  flake.nixosModules.configuration =
    {
      pkgs,
      ...
    }:

    {
      environment = {

        shellAliases = {
          cat = "bat";
          du = "dust --depth=2 --reverse";
          grep = "rg --hidden --no-ignore --pretty --search-zip --smart-case";
        };

        systemPackages = with pkgs; [
          delta
          dust
          ripgrep
        ];

        variables = {
          EDITOR = "hx";
          VISUAL = "zeditor";
        };
      };
    };
}
