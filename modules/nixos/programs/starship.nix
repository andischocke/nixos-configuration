{
  flake.nixosModules.configuration = {
    programs.starship = {
      enable = true;
      enableNushellIntegration = true;
      
      presets = [
        "catppuccin-powerline"
      ];
    };
  };
}
