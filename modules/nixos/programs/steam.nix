{
  flake.nixosModules.configuration =
    {
      pkgs,
      ...
    }:

    {
      programs.steam = {
        enable = true;
        
        extraCompatPackages = with pkgs; [
          proton-cachyos-bin
          proton-ge-bin
        ];
      };
    };
}
