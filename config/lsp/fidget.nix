{ lib, config, ... }: {
  options = { fidget.enable = lib.mkEnableOption "Enable fidget module"; };
  config = lib.mkIf config.fidget.enable {

    plugins.fidget = { enable = true; };
  };
}
