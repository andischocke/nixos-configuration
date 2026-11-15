{
  flake.nixosModules.configuration =
    {
      pkgs,
      ...
    }:

    {
      environment = {

        shellAliases = {
          grep = "rg --hidden --no-ignore --pretty --search-zip --smart-case";
        };

        systemPackages = with pkgs; [
          delta
          facter
          ripgrep
        ];

        variables = {
          EDITOR = "hx";
          VISUAL = "zeditor";
        };
      };
    };
}
