{
  flake.nixosModules.configuration =
    {
      pkgs,
      ...
    }:

    {
      boot = {
        kernelPackages = pkgs.linuxPackages_latest;
        kernelModules = [
          "kvm-amd"
          # "ntsync"
        ];

        # Initial RAM Disk
        initrd = {
          availableKernelModules = [
            "ahci"
            "nvme"
            "sd_mod"
            "usb_storage"
            "xhci_pci"
          ];
        };

        # Bootloader
        loader = {
          efi = {
            canTouchEfiVariables = true;
            efiSysMountPoint = "/boot";
          };
          systemd-boot = {
            enable = true;
            configurationLimit = 8;
            consoleMode = "max";
            editor = false;
          };
          timeout = 4;
        };

        # Plymouth
        plymouth = {
          enable = true;
          theme = "catppuccin-mocha";
          themePackages = [
            (pkgs.catppuccin-plymouth.override {
              variant = "mocha";
            })
          ];
        };

        # Temporary
        tmp = {
          cleanOnBoot = true;
          useTmpfs = false;
        };
      };
    };
}
