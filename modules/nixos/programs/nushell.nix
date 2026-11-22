{
  flake.nixosModules.configuration = {
    programs.nushell = {
      enable = true;

      interactiveShellInit = ''
        $env.config.show_banner = false
      '';
    };
  };
}
