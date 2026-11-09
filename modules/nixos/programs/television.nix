{
  flake.nixosModules.configuration = {
    programs.television = {
      enable = true;
      enableBashIntegration = true;
    };
  };
}
