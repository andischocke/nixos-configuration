{
  flake.nixosModules.configuration = {
    programs.nushell = {
      enable = true;

      interactiveShellInit = ''

        $env.config.history = {
          file_format: "sqlite"
          ignore_space_prefixed: false
          isolation: true
        }

        $env.config.show_banner = false
      '';
    };
  };
}
