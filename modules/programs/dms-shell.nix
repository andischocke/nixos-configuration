{
  flake.nixosModules.configuration = {
    programs.dms-shell = {
      enable = true;

      enableAudioWavelength = true;
      enableCalendarEvents = true;
      enableClipboardPaste = true;
      enableDynamicTheming = true;
      enableSystemMonitoring = true;
      enableVPN = true;

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
