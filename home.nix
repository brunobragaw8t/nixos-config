{ config, pkgs, ... }:
{
  imports = [
    ./hm-modules/hyprland.nix
    ./hm-modules/theme.nix
    ./hm-modules/waybar.nix
    ./hm-modules/wofi.nix
    ./hm-modules/kitty.nix
  ];

  home.username = "braga";
  home.homeDirectory = "/home/braga";
  home.stateVersion = "25.11"; # Pins to initial version, don't bump it
  home.packages = with pkgs; [
    claude-code
    discord
    lazygit
    nerd-fonts.jetbrains-mono
    hyprpaper
    mpv
    opencode
    pavucontrol
    zen-browser
  ];

  programs.home-manager.enable = true;
  programs.bash = {
    enable = true;
    shellAliases = {
      lg = "lazygit";
      oc = "opencode";
    };
  };
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Bruno Braga";
        email = "brunobragaw8t@gmail.com";
      };
    };
  };
}
