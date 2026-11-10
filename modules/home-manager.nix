{
  flake.nixosModules.home-manager =
    {
      inputs,
      self,
      ...
    }:

    {
      imports = [
        inputs.home-manager.nixosModules.default
      ];

      home-manager = {
        backupFileExtension = "backup";
        useGlobalPkgs = true;
        useUserPackages = true;
        users.andreas = {
          imports = [
            self.homeModules.default
            self.homeModules.helix
            self.homeModules.home
            self.homeModules.ripgrep
            self.homeModules.television
            self.homeModules.zed-editor
          ];
        };
      };
    };
}
