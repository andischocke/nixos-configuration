{
  flake.nixosModules.configuration = {
    programs.niri = {
      enable = true;

      useNautilus = true;
    };
  };
}
