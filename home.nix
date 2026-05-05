{ config, pkgs, ... }:

{
  home.username = "andreas";
  home.homeDirectory = "/home/andreas";
  home.stateVersion = "25.11"; 
  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Andreas Henneberger";
        email = "andreas.henneberger@gmail.com";
      };
    };
  };
}
