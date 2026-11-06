{
  flake.nixosModules.configuration = {
    programs.zoxide = {
      enable = true;

      flags = [
        "--cmd cd"
      ];
    };
  };
}
