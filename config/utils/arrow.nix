{ lib, config, ... }:
{
  options = {
    arrow.enable = lib.mkEnableOption "Enable arrow module";
  };
  config = lib.mkIf config.arrow.enable {
    plugins.arrow = {
      enable = true;
    };
  };
}

