{ config, pkgs, ... }:
{
  programs.waybar.enable = true;

  xdg.configFile."waybar" = {
    source = config.lib.file.mkOutOfStoreSymlink "/home/braga/nixos-config/config/waybar/";
    recursive = true;
  };
}
