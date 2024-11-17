{ lib, config, ... }:
{
  options = {
    twilight.enable = lib.mkEnableOption "Enable twilight module";
  };
  config = lib.mkIf config.twilight.enable {
    plugins.twilight = {
      enable = true;
    };
  };
}
