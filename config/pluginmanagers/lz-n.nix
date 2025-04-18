{
  lib,
  config,
  ...
}:
{
  options = {
    lz-n.enable = lib.mkEnableOption "Enable lz-n module";
  };
  config = lib.mkIf config.lz-n.enable {
    plugins.lz-n = {
      enable = true;
    };
  };
}
