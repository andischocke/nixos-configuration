{
  flake.nixosModules.configuration = {
    programs.noctalia = {
      enable = true;

      systemd = {
        enable = true;
      };
    };
  };
}
