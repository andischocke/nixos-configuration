{
  flake.nixosModules.test = {
    programs.starship = {
      enable = true;
      enableNushellIntegration = true;

      presets = [
        "catppuccin-powerline"
      ];
    };
  };
}
