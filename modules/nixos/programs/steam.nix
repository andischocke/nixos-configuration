{
  flake.nixosModules.configuration =
    {
      pkgs,
      ...
    }:

    {
      programs.steam = {
        enable = true;

        extraCompatPackages = with pkgs.steam; [
          proton-ge-bin
        ];
      };
    };
}
