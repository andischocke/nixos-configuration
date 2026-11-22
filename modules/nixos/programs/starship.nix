{
  flake.nixosModules.configuration = {
    programs.starship = {
      enable = true;
      enableNushellIntegration = true;
      
      presets = [
        "catppuccin-powerline"
      ];

      settings = {
        directory = {
          truncate_to_repo = true;
          truncation_length = 3;
        };
      };
    };
  };
}
