{ config, pkgs, ... }:
{
  imports = [ ./hm-modules/hyprland.nix ];

  home.username = "braga";
  home.homeDirectory = "/home/braga";
  home.stateVersion = "25.11"; # Pins to initial version, don't bump it
  programs.home-manager.enable = true;
  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo I use NixOS, btw";
    };
  };
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Bruno Braga";
        email = "brunobragaw8t@gmail.com";
      };
      alias = {
        lg = "log --oneline --graph --decorate";
      };
    };
  };
}
