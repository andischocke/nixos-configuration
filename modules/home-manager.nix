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
            self.homeModules.home
            self.homeModules.vscode
          ];
        };
      };
    };
}
