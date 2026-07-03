{
  self,
  inputs,
  ...
}:

{
  flake.nixosConfigurations.nixos = inputs.nixpkgs.lib.nixosSystem {
    specialArgs = { inherit self inputs; };
    modules = [
     inputs.disko.nixosModules.disko
     inputs.preservation.nixosModules.default
     ./_disko.nix
     ./_preservation.nix


      self.nixosModules.configuration
      self.nixosModules.hardware
      self.nixosModules.home-manager
    ];
  };
}
