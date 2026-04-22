{ config, pkgs, ... }:
{
  programs.wofi = {
    enable = true;

    settings = {
      width = 600;
      height = 400;
      show = "drun";
      no_actions = true;
      prompt = "Search...";
      allow_images = true;
      image_size = 24;
    };

    style = ''
      * {
          font-family: "JetBrainsMono Nerd Font", monospace;
          font-size: 16px;
      }

      window {
          background-color: #0a0a0a;
          border: 1px solid #333333;
      }

      #input {
          border-radius: 0;
          border: 1px solid #333;
          padding: 8px 12px;
          background: none;
          color: #aaaaaa;
      }

      #input:focus {
          box-shadow: none;
          border-color: #666;
      }

      #text {
          margin-left: 8px;
          color: #aaaaaa;
      }

      #entry {
          padding: 8px 12px;
      }

      #entry:selected {
          outline: none;
          background-color: rgba(255, 255, 255, 0.05);
      }
    '';
  };
}
