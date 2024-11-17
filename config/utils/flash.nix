{ lib, config, ... }:
{
  options = {
    flash.enable = lib.mkEnableOption "Enable flash module";
  };
  config = lib.mkIf config.flash.enable {
    plugins.flash = {
      enable = true;
    };
  };
}
