{
  lib,
  config,
  ...
}:
{
  imports = [
    ./lazy-nvim.nix
    ./lz-n.nix
  ];

  options = {
    pluginmanagers.enable = lib.mkEnableOption "Enable pluginmanagers module";
  };
  config = lib.mkIf config.pluginmanagers.enable {
    lazy-nvim.enable = lib.mkDefault false;
    lz-n.enable = lib.mkDefault true;
  };
}
