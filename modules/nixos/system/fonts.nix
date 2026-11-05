{
  flake.nixosModules.configuration =
    {
      pkgs,
      ...
    }:

    {
      fonts = {
        fontconfig = {
          enable = true;

          defaultFonts = {
            emoji = [ "Noto Color Emoji" ];
            sansSerif = [ "Noto Sans" ];
            serif = [ "Noto Serif" ];
            monospace = [ "JetBrainsMono Nerd Font" ];
          };
        };

        packages = with pkgs; [
          noto-fonts
          noto-fonts-color-emoji
          nerd-fonts.adwaita-mono
          nerd-fonts.arimo
          nerd-fonts.cousine
          nerd-fonts.jetbrains-mono
          nerd-fonts.roboto-mono
          nerd-fonts.symbols-only
          nerd-fonts.tinos
        ];
      };
    };
}
