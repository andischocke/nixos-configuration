{
  disko.devices = {
    disk = {
      sata = {
        device = "ata-CT500MX500SSD1_1902E1E2A55A";
        type = "disk";

        content = {
          type = "gpt";
          partitions = {
            root = {
              name = "root";
              size = "100%";
            };
          };
        };
      };

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
                  "-m raid1"
                  "-d single"
                  "-f"
                  "/dev/disk/by-id/ata-CT500MX500SSD1_1902E1E2A55A-part1"
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

  fileSystems = {
    "/nix".neededForBoot = true;
    "/persistent".neededForBoot = true;
  };
}
