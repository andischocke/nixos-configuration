{
  flake.nixosModules.configuration = 
    {
      config,
      lib,
      pkgs,
      ...
    }:
    
    {
    programs.nushell = {
      enable = true;

      # $env.config.buffer_editor = ["hx", "{file}:{line}:{col}"]
      interactiveShellInit = ''
        $env.config.buffer_editor = "hx"

        $env.config.completions = {
          algorithm: "fuzzy"
          case_sensitive: false
          sort: "smart"
        }

        $env.config.history = {
          file_format: "sqlite"
          ignore_space_prefixed: false
          isolation: true
        }

        $env.config.show_banner = false
        
        source ${
          pkgs.runCommand "zoxide-nushell-config.nu" { } ''
            ${lib.getExe config.programs.zoxide.package} init nushell ${lib.escapeShellArgs config.programs.zoxide.flags} > "$out"
          ''
        }
      '';

      plugins = with pkgs.nushellPlugins; [

      ];
    };
  };
}
