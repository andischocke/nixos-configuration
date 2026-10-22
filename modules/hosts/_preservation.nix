{
  preservation = {
    enable = true;

    preserveAt."/persistent" = {
      directories = [
        "/etc/ssh"
        "/var/lib/bluetooth"
        "/var/lib/systemd/timers"
        "/var/log"

        {
          directory = "/tmp";
          mode = "1777";
        }
        {
          directory = "/var/lib/nixos";
          inInitrd = true;
        }
      ];

      files = [
        {
          file = "/etc/machine-id";
          configureParent = true;
          how = "symlink";
          inInitrd = true;
        }
      ];

      users.andreas = {
        directories = [
          "Desktop"
          "Documents"
          "Downloads"
          "Music"
          "Pictures"
          "Projects"
          "Public"
          "Templates"
          "Videos"
        ];
        files = [
        ];
      };
    };
  };
}
