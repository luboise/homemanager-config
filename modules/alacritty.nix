{
  config,
  lib,
  ...
}:
with lib; {
  options.hm.alacritty = {
    enable = mkOption {
      type = types.bool;
      default = true;
      description = "Alacritty shell";
    };
  };

  config = mkIf config.hm.alacritty.enable {
    programs.alacritty = {
      enable = true;

      settings = {
        font = {
          size = 11;
          offset.y = 1;

          normal = {
            family = "JetBrains Mono";
            style = "Medium";
          };

          bold = {
            family = "JetBrains Mono";
            style = "ExtraBold";
          };

          italic = {
            family = "JetBrains Mono";
            style = "SemiBold Italic";
          };

          bold_italic = {
            family = "JetBrains Mono";
            style = "ExtraBold Italic";
          };
        };

        window = {
          opacity = 0.9;
          dynamic_title = true;

          decorations = "Full";
          decorations_theme_variant = "Dark";
        };

        selection = {
          save_to_clipboard = true;
        };

        scrolling = {
          history = 100000;
        };
      };
    };
  };
}
