{ lib, config, ... }: {
  options = {
    rustaceanvim.enable = lib.mkEnableOption "Enable rustaceanvim module";
  };
  config = lib.mkIf config.rustaceanvim.enable {
    plugins.rustaceanvim = {
      enable = true;
      settings = { server.auto_attach = true; };
    };

  };
}
