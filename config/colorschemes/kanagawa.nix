{ lib, config, ... }: {
  options = {
    kanagawa.enable = lib.mkEnableOption "Enable kanagawa Colorscheme module";

  };
  config = lib.mkIf config.kanagawa.enable {
    colorschemes = {
      kanagawa = {
        enable = true;
        settings = {
          theme = "dragon";
          background = {
            dark = "dragon";
            light = "wave";
          };
        };
      };
    };
  };
}

