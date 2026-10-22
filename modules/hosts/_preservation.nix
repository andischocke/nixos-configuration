{
  preservation = {
    enable = true;

    preserveAt."/persistent" = {
      directories = [
        "/etc/ssh"
        "/etc/nixos"
        {
          directory = "/tmp";
          mode = "1777";
        }

        "/var/lib/bluetooth"
        
        {
          directory = "/var/lib/nixos";
          inInitrd = true;
        }
      ];

      files = [
        {
          file = "/etc/machine-id";
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
