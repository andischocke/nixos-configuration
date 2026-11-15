{
  flake.homeModules.concord = {
    programs.concord = {
      enable = true;

      settings = {
        composer = {
          emojis_as_links = true;
        };
        display = {
          animate_previews = "never";
          attachment_viewer_quality = "original";
          hour_format_24 = true;
          image_preview_quality = "original";
          image_protocol = "auto";
          show_avatars = true;
          show_custom_emoji = true;
          show_images = true;
        };
        notifications = {
          desktop_notifications = true;
        };
        safety = {
          enable = true;
        };
        voice = {
          allow_microphone_transmit = true;
          microphone_sensitivity = -40;
          microphone_volume = 100;
          noise_suppression = true;
          self_deaf = false;
          self_mute = false;
          voice_output_volume = 100;
        };
      };
    };
  };
}
