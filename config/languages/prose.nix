{ lib, config, ... }: {
  options = { prose.enable = lib.mkEnableOption "Enable Prose module"; };
  config = lib.mkIf config.prose.enable {
    plugins.render-markdown = { enable = true; };
    plugins.vimtex = {
      enable = true;
      texlivePackage = null;
    };
  };
}

