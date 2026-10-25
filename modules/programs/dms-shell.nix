{
  flake.nixosModules.configuration = {
    programs.dux-shell = {
      enable = true;

      systemd = {
        enable = true;
        restartIfChanged = true;
      };
    };

    programs.dux-search = {
      enable = true;

      systemd = {
        enable = true;
        target = "default.target";
      };
    };
  };
}
