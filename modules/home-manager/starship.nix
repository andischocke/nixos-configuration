{
  flake.homeModules.terminal =
    {
      pkgs,
      ...
    }:

    {
      programs.starship = {
        enable = true;
        enableNushellIntegration = true;

        extraPackages = with pkgs; [
          
        ];
        
        presets = [
          "catppuccin-powerline"
        ];
      };
    };
}
