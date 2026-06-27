{
  flake.nixosModules.inactive = {
    services.xserver = {
      enable = false;

      videoDrivers = [
        "amdgpu"
        #"nvidia"
      ];

      xkb = {
        layout = "de";
        variant = "";
      };
    };
  };
}
