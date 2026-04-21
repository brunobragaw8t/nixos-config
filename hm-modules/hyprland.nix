{ config, pkgs, ... }:
{
  xdg.configFile."hypr" = {
    source = config.lib.file.mkOutOfStoreSymlink "/home/braga/nixos-config/config/hypr/";
    recursive = true;
  };
}
