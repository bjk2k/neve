{ lib, config, ... }:
{
  options = {
    truezen.enable = lib.mkEnableOption "Enable True Zen module";
  };
  config = lib.mkIf config.truezen.enable {
    plugins.zen-mode = {
      enable = true;
    };
  };
}
