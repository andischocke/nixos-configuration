{
  self,
  inputs,
  ...
}:

{
  flake.nixosConfigurations.nixos = inputs.nixpkgs.lib.nixosSystem {
    specialArgs = { inherit self inputs; };
    modules = [
      self.nixosModules.configuration
      self.nixosModules.hardware
      self.nixosModules.home-manager
    ];
  };
}
