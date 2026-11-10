{
  flake.homeModules.ripgrep = {
    programs.ripgrep = {
      enable = true;

      arguments = [
        "--hidden"
        "--no-ignore"
        "--pretty"
        "--search-zip"
        "--smart-case"

        "--colors=path:fg:250,179,135"
        "--colors=path:style:bold"
        "--colors=highlight:fg:205,214,244"
        "--colors=match:fg:243,139,168"
        "--colors=line:fg:166,173,200"
        "--colors=column:fg:166,173,200"
      ];
    };
  };
}
