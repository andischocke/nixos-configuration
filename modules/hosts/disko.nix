{
  disko.devices = {
    # Disk devices
    disk = {
      nvme = {
        device = "/dev/disk/by-id/nvme-KINGSTON_RBUSNS8154P3512GJ_50026B76826F6223";
        type = "disk";

        content = {
          type = "gpt";
          partitions = {
            # Extensible Firmware Interface System Partition
            esp = {
              name = "ESP";
              size = "1G";
              type = "EF00";

              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
                mountOptions = [
                  "umask=0077"
                ];
              };
            };

            # Swap partition
            swap = {
              name = "swap";
              size = "16G";

              content = {
                type = "swap";
                resumeDevice = true;
              };
            };

            # Root partition
            root = {
              name = "root";
              size = "100%";

              content = {
                type = "btrfs";
                extraArgs = [
                  "-f"
                ];

                subvolumes = {
                  nix = {
                    mountpoint = "/nix";
                    mountOptions = [
                      "compress=zstd"
                      "noatime"
                      "subvol=nix"
                    ];
                  };

                  persistent = {
                    mountpoint = "/persistent";
                    mountOptions = [
                      "compress=zstd"
                      "noatime"
                      "subvol=persistent"
                    ];
                  };
                };
              };
            };
          };
        };
      };
    };

    # Ephemeral root
    nodev.root = {
      fsType = "tmpfs";
      mountpoint = "/";
      mountOptions = [
        "defaults"
        "mode=755"
        "size=25%"
      ];
    };
  };
}
