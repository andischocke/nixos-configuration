{
  flake.nixosModules.configuration = {
    programs.zoxide = {
      enable = true;
    };
  };
}
