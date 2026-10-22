{
  flake.nixosModules.configuration = {
    programs.dms-shell = {
      enable = true;

      systemd = {
        enable = true;
        restartIfChanged = true;
      };
    };

    programs.dsearch = {
      enable = true;

      systemd = {
        enable = true;
        target = "default.target";
      };
    };
  };
}
