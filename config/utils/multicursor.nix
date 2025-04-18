{ lib, config, ... }: {
  options = {
    multicursor.enable = lib.mkEnableOption "Enable multicursor module";
  };
  config = lib.mkIf config.multicursor.enable {
    plugins.multicursors = { enable = true; };
  };
}
