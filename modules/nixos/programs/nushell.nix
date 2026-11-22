{
  flake.nixosModules.configuration = {
    programs.nushell = {
      enable = true;

      interactiveShellInit = ''
        $env.config = {
          history = {
            file_format = "sqlite";
            ignore_space_prefixed = false;
            isolation = true;
          };

          show_banner = false;
        };
      '';
    };
  };
}
